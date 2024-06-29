.global _start
.intel_syntax noprefix

_start:
    mov rax, 1
    mov rdi, 1
    lea rsi, [hello_world]
    mov rdx, 14
    syscall

    mov rax, 60
    mov rdi, 2 

    syscall
hello_world:
    .asciz "Hello, world!\n"
