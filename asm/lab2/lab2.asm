	section .data
REQ_A 	db 	"Введите А:",10
REQ_A_LEN equ	$-REQ_A
REQ_X 	db 	"Введите X:",10
REQ_X_LEN equ	$-REQ_X
REQ_B	db 	"Введите B:",10
REQ_B_LEN equ	$-REQ_B
REQ_K	db 	"Введите K:",10
REQ_K_LEN equ	$-REQ_K
RES	db 	"Результат вычисления выражения  d = a * x - 3 * (b + 3 / k):",10
RES_LEN	equ	$-RES
ERR	db 	"Введены некорректные данные. Завершение работы.",10
ERR_LEN	equ	$-ERR
THREE	dd	3
	section .bss
BUFFER	resb	10
BUFFER_LEN equ	$-BUFFER
A	resd	1
B	resd	1
D	resd	1
K	resd	1
X	resd	1
section .text
global _start ; d = a * x - 3 * (b + 3 / k)
_start:
	; input the number A
	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	REQ_A
	mov	rdx, 	REQ_A_LEN
	syscall
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	BUFFER
	mov	rdx,	BUFFER_LEN
	syscall
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	mov	[A],	eax
	; input the number X
	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	REQ_X
	mov	rdx, 	REQ_X_LEN
	syscall
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	BUFFER
	mov	rdx,	BUFFER_LEN
	syscall
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	mov	[X],	eax
	; input the number B
	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	REQ_B
	mov	rdx, 	REQ_B_LEN
	syscall
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	BUFFER
	mov	rdx,	BUFFER_LEN
	syscall
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	mov	[B],	eax
	; input the number K
	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	REQ_K
	mov	rdx, 	REQ_K_LEN
	syscall
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	BUFFER
	mov	rdx,	BUFFER_LEN
	syscall
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	cmp	eax,	0
	je	.err
	mov	[K],	eax
	; compute d = a * x - 3 * (b + 3 / k)
	xor	rdx,	rdx
	mov	eax,	[A]
	imul	dword[X]
	mov	[A],	eax
	xor	rdx,	rdx
	mov	eax,	3
	idiv	dword[K]
	add	eax,	[B]
	imul	dword[THREE]
	mov	[B],	eax
	mov	eax,	[A]
	sub	eax,	[B]
	mov	[D],	eax
	; output
	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	RES
	mov	rdx, 	RES_LEN
	syscall
	xor	rax,	rax
	mov	eax,	[D]
	mov	rsi,	BUFFER
	call	IntToStr64
	mov	rdx,	rax
	mov	rax, 	1
	mov	rdi, 	1
	syscall
	; exit
	mov	rdi,	0
.exit	mov	rax,	60
	syscall
.err:	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	ERR
	mov	rdx, 	ERR_LEN
	syscall
	mov	rdi,	1
	jmp	.exit
%include "../lib.asm"