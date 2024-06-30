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
    mov bl, 1
    mov ah, 0
    mov dh, 1
    mov dl, 0

    mov ecx, 11 /* 11 + 2 = 13th fibonacci */

    jmp fibonacci

fibonacci:
    mov ah, bl
    add bl, al 

    mov al, ah

    sub cl, dh
    
    JECXZ exit
    jmp fibonacci

exit:
    mov rax, 60
    mov rdi, 0
    mov di, bx
    syscall
    