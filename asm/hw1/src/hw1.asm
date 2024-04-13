    section .data
ALPH_LEN dd 0   ; количество символов, записанных в буфер
OUTPUT_CHAR_INFO db "  -   ",10
OUTPUT_CHAR_INFO_LEN equ $-OUTPUT_CHAR_INFO
INVITE db "Enter the text (26 characters):",10
INVITE_LEN equ $-INVITE
INT_TO_STR_DIST times 10 db " " 
RESULT_CHAR_AMOUNT_INFO db " different charaters ",10
RESULT_CHAR_AMOUNT_INFO_LEN equ $-RESULT_CHAR_AMOUNT_INFO 
    section .bss
INPUT resb 26   ; буфер для входной строки
ALPH resb 26    ; буфер для символов, которые встретились входной строке 
    section .text
global _start
_start:
    ; приглашение на ввод 
    mov     rax, 1          ; fun=write
    mov     rdi, 1          ; stdout=1
    mov     rsi, INVITE     ; string
    mov     rdx, INVITE_LEN ; string length
    syscall                 ; system call
    ; ввод входной строки
    mov     rax, 0          ; fun=read 
    mov     rdi, 0          ; stdin=0
    mov     rsi, INPUT      ; dist
    mov     rdx, 26         ; dist length
    syscall
    ; внешний цикл. обход всей строки
    mov     rcx, 26
exit: ; вывод количества различных символов
    mov     rax, [ALPH_LEN]
    lea     rsi, [INT_TO_STR_DIST]
    call IntToStr64
    sub     rax, 1
    mov     rdx, rax
    mov     rax, 1          ; fun=write
    mov     rdi, 1          ; stdout=1
    syscall
    ; вывод заверщающего сообщения
    mov     rsi, RESULT_CHAR_AMOUNT_INFO     ; string
    mov     rdx, RESULT_CHAR_AMOUNT_INFO_LEN ; string length
    mov     rax, 1          ; fun=write
    mov     rdi, 1          ; stdout=1
    syscall
    ; завершение программы
    mov     rax, 60         ; fun=exit
    xor     rdi, rdi        ; return code 0    
    syscall

%include "./../../lib.asm"