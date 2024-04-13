    section .data
F1 dw 65535
F2 dd 65535
    section .bss
    section .text
global _start
_start:
    add WORD[F1],1
    mov rax, 60
    xor rdi, rdi
    add DWORD[F2],1
    syscall
