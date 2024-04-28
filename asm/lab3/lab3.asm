	section .data
REQ_G 	db 	"Введите G:",10
REQ_G_LEN equ	$-REQ_G
REQ_M 	db 	"Введите M:",10
REQ_M_LEN equ	$-REQ_M
REQ_C	db 	"Введите C:",10
REQ_C_LEN equ	$-REQ_C
REQ_A	db 	"Введите A:",10
REQ_A_LEN equ	$-REQ_A
REQ_K	db 	"Введите K:",10
REQ_K_LEN equ	$-REQ_K
RES	db 	"Результат вычисления выражения:",10
RES_LEN	equ	$-RES
ERR	db 	"Введены некорректные данные. Завершение работы.",10
ERR_LEN	equ	$-ERR
THREE	dd	3
	section .bss
BUFFER	resb	10
BUFFER_LEN equ	$-BUFFER
G	resd	1
M	resd	1
C	resd	1
A	resd	1
K	resd	1
F	resd	1
section .text
global _start
_start:
	; input the number G
	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	REQ_G
	mov	rdx, 	REQ_G_LEN
	syscall
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	BUFFER
	mov	rdx,	BUFFER_LEN
	syscall
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	mov	[G],	eax
	; input the number M
	mov	rax, 	1
	mov	rdi, 	1
	mov	rsi, 	REQ_M
	mov	rdx, 	REQ_M_LEN
	syscall
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	BUFFER
	mov	rdx,	BUFFER_LEN
	syscall
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	mov	[M],	eax
	; if g != m then compute f=m-g else continue input vars
	mov	eax,	[M]
	cmp	eax,    [G]
	je	.coinp
	sub	eax,	[G]
	mov	[F],	eax
	jmp	.outp
.coinp:	mov	rax, 	1	; input the number C
	mov	rdi, 	1
	mov	rsi, 	REQ_C
	mov	rdx, 	REQ_C_LEN
	syscall
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	BUFFER
	mov	rdx,	BUFFER_LEN
	syscall
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	mov	[C],	eax
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
    	cmp	eax,	0
	je	.err
	mov	[A],	eax
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
	mov	[K],	eax
	; compute f = (g-c)/a+k
	mov	eax,	[G]
	sub	eax,	[C]
	xor	rdx,	rdx
	idiv	dword[A]
	add	eax,	[K]
	mov	[F],	eax
.outp	mov	rax, 	1	; output
	mov	rdi, 	1
	mov	rsi, 	RES
	mov	rdx, 	RES_LEN
	syscall
	xor	rax,	rax
	mov	eax,	[F]
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