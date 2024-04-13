    section .data

    section .bss
InBuf resb 10
lenIn equ $-InBuf
a resw 1
b resw 1
d resw 1
k resw 1
x resw 1
num resw 1
    section .text ; d = a * x - 3 * (b + 3 / k)
    mov rax, a
    call InputNum
    ; exit
    mov rax, 60 ; системная функция 60 (exit)
    xor rdi, rdi ; return code 0
    syscall ; вызов системной функции
InputNum:
    push rbp
    mov rbp,rsp
    ;
    mov [num], rax
    xor rax, rax
    push rbx
    push rcx
    push rdx
    push rsi
    ;
    mov rax, 0 ; системная функция 0 (read)
    mov rdi, 0 ; дескриптор файла stdin=0
    mov rsi, InBuf ; адрес вводимой строки
    mov rdx, lenIn ; длина строки
    syscall ; вызов системной функции
    call StrToInt64
    mov word[num], ax
    ;
    pop rsi
    pop rdx
    pop rcx
    pop rbx
    ;
    mov rsp,rbp
    pop rbp
    ret
%include "../lib.asm"