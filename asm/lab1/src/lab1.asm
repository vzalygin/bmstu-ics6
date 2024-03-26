    section .data  ; сегмент инициализированных переменных
ExitMsg db "Press Enter to Exit",10   ; выводимое сообщение9
lenExit equ $-ExitMsg  
A  dq  10
B  dq  6
D  dq  42
a1  dq  2
a2  dq  3
    section .bss  ; сегмент неинициализированных переменных
InBuf  resb  10       ; буфер для вводимой строки
lenIn  equ  $-InBuf
F  resd  1
    section .text   ; сегмент кода
global _start
_start:
  ; write
  mov  rax,  [A]  ; загрузили число А в регистр RAX
  imul  byte[a2]  ; умножили на 3
  inc  rax    ; прибавили 1
  mov  rcx,  rax  ; записали в RCX значение RAX
  mov  rax,  [D]  ; загрузили число D в регистр RAX
  sub  rax,  2  ; вычли 2
  imul  word[a1]  ; умножили на 2
  mov   rbx,  rax  ; сохранили значение RAX в RBX
  mov  rax,  [B]  ; загрузили число B в регистр RAX
  imul  rax    ; возвели в квадрат
  sub  rax,  rbx  ; вычли из B^2 значение в RBX
  xor rdx, rdx;
  idiv  ecx    ; делим на 3а+1
  mov  [F],   rax  ; сохранили результат в F
  mov  rax,   1  ; системная функция 1 (write)
  mov  rdi,   1  ; дескриптор файла stdout=1
  mov  rsi,   ExitMsg ; адрес выводимой строки
  mov  rdx,   lenExit ; длина строки
  syscall      ; вызов системной функции
  ; read
  mov  rax,   0  ; системная функция 0 (read)
  mov  rdi,   0  ; дескриптор файла stdin=0
  mov  rsi,   InBuf  ; адрес вводимой строки
  mov  rdx,   lenIn  ; длина строки
  syscall      ; вызов системной функции
  ; exit
  mov  rax,   60  ; системная функция 60 (exit)
  xor  rdi,   rdi  ; return code 0
  syscall      ; вызов системной функции