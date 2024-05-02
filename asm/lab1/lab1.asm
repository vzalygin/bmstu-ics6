    section .data
A   db  105
B   db  -13
    section .bss
C   resb    1
    section .text
global _start
_start:
    mov AL,[A]
    add AL,[B]
    mov [C],AL

    mov rdx,    0
    mov	rax,	60
	syscall
