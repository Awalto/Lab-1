.section .bss
.global ram
.lcomm ram, 256


.section .text
.global fill_ram

fill_ram:

    mov $0x50, %rcx   # start

    loop_start:
        movb $0, ram(%rcx)  # set val to 0
        inc %rcx               # increment rcx by 1
        cmp $0x59, %rcx        # stop
        jne loop_start
        ret
.section .note.GNU-stack,"",@progbits
