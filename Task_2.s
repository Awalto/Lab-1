.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of RAM (uninitialized memory)

.section .text
.globl fill_ram_ind         # Make function visible to C program

# Store FFh into RAM locations 50H - 58H using indirect addressing


fill_ram_ind:
    lea ram+0x50(%rip), %rdi 
    movb $0xFF, (%rdi)
    
    lea ram+0x51(%rip), %rdi
    movb $0xFF, (%rdi)

    lea ram+0x52(%rip), %rdi
    movb $0xFF, (%rdi)

    lea ram+0x53(%rip), %rdi
    movb $0xFF, (%rdi)

    lea ram+0x54(%rip), %rdi
    movb $0xFF, (%rdi)

    lea ram+0x5(%rip), %rdi
    movb $0xFF, (%rdi)

    lea ram+0x56(%rip), %rdi
    movb $0xFF, (%rdi)

    lea ram+0x57(%rip), %rdi
    movb $0xFF, (%rdi)

    lea ram+0x58(%rip), %rdi
    movb $0xFF, (%rdi)


    

    ret                 # Return control back to C program

.section .note.GNU-stack,"",@progbits
