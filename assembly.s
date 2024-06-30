.global _start
.intel_syntax noprefix

/*
A (al)
B (bl/bx)
C (ah)
D (dh)
E (dl)
*/

_start:
    mov al, 0
    mov bl, 0
    mov ah, 0
    mov dh, 0
    mov dl, 0

    mov dl, 1
    mov bl, dl

    mov dh, 1
    mov ecx, 11 /* 11 + 2 = 13th fibonacci */

    jmp fibonacci


hello_world:
    .asciz "Hello, world!\n"


fibonacci:
    mov dl, bl
    mov ah, dl
    add bl, al 

    mov dl, ah
    mov al, dl

    sub cl, dh
    
    JECXZ exit
    jmp fibonacci

exit:
    mov rax, 60
    mov rdi, 0
    mov di, bx
    syscall