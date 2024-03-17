    section .data  ; ������� ������������������ ����������
ExitMsg db "Press Enter to Exit",10   ; ��������� ���������9
lenExit equ $-ExitMsg  
A  dq  10
B  dq  6
D  dq  42
a1  dq  2
a2  dq  3
    section .bss  ; ������� �������������������� ����������
InBuf  resb  10       ; ����� ��� �������� ������
lenIn  equ  $-InBuf
F  resd  1
    section .text   ; ������� ����
global _start
_start:
  ; write
  mov  rax,  [A]  ; ��������� ����� � � ������� RAX
  imul  byte[a2]  ; �������� �� 3
  inc  rax    ; ��������� 1
  mov  rcx,  rax  ; �������� � RCX �������� RAX
  mov  rax,  [D]  ; ��������� ����� D � ������� RAX
  sub  rax,  2  ; ����� 2
  imul  word[a1]  ; �������� �� 2
  mov   rbx,  rax  ; ��������� �������� RAX � RBX
  mov  rax,  [B]  ; ��������� ����� B � ������� RAX
  imul  rax    ; ������� � �������
  sub  rax,  rbx  ; ����� �� B^2 �������� � RBX
  xor rdx, rdx;
  idiv  ecx    ; ����� �� 3�+1
  mov  [F],   rax  ; ��������� ��������� � F
  mov  rax,   1  ; ��������� ������� 1 (write)
  mov  rdi,   1  ; ���������� ����� stdout=1
  mov  rsi,   ExitMsg ; ����� ��������� ������
  mov  rdx,   lenExit ; ����� ������
  syscall      ; ����� ��������� �������
  ; read
  mov  rax,   0  ; ��������� ������� 0 (read)
  mov  rdi,   0  ; ���������� ����� stdin=0
  mov  rsi,   InBuf  ; ����� �������� ������
  mov  rdx,   lenIn  ; ����� ������
  syscall      ; ����� ��������� �������
  ; exit
  mov  rax,   60  ; ��������� ������� 60 (exit)
  xor  rdi,   rdi  ; return code 0
  syscall      ; ����� ��������� �������