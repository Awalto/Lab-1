.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl sum_me        # Make function visible to C program



sum_me:
    xor %eax, %eax
    mov $1, %ecx
    
loop:
    add %ecx, %eax
    inc %ecx
    cmp $11, %ecx
    jl loop

    movb %al, ram+0x50(%rip)


    ret                 # Return control back to C program

.section .note.GNU-stack,"",@progbits
