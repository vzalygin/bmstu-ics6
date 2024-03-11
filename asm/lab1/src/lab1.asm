section .data              ; ˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜˜
ExitMsg db "Press Enter to Exit",10  ; ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜
lenExit equ $-ExitMsg
section .bss               ; ˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜˜
InBuf   resb    10            ; ˜˜˜˜˜ ˜˜˜ ˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜
lenIn   equ     $-InBuf 
section .text         ; ˜˜˜˜˜˜˜ ˜˜˜˜
global  _start
_start:
    ; write
    mov     rax, 1        ; ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜ 1 (write)
    mov     rdi, 1        ; ˜˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜ stdout=1
    mov     rsi, ExitMsg  ; ˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜
    mov     rdx, lenExit  ; ˜˜˜˜˜ ˜˜˜˜˜˜
    syscall               ; ˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜
    ; read
    mov     rax, 0        ; ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜ 0 (read)
    mov     rdi, 0        ; ˜˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜ stdin=0
    mov     rsi, InBuf    ; ˜˜˜˜˜ ˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜
    mov     rdx, lenIn    ; ˜˜˜˜˜ ˜˜˜˜˜˜
    syscall               ; ˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜
    ; exit
    mov     rax, 60       ; ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜ 60 (exit)
    xor     rdi, rdi      ; return code 0    
    syscall               ; ˜˜˜˜˜ ˜˜˜˜˜˜˜˜˜ ˜˜˜˜˜˜˜