; Дана матрица 7х3. Обнулить элементы с четной суммой индексов. Организовать ввод матрицы и вывод результатов.
	section .data
invite			db 	"Enter the 7x3 matrix:",10
invite_len		equ	$-invite
err			db	"Something went wrong due execution",10
err_len			equ	$-err
matrix_size            	equ	21
buffer_len		equ	256
two			dd	2
	section .bss
matrix		 	resd 	matrix_size
buffer			resb	buffer_len
	section .text
global _start
_start:
	; input invite
	mov	rax,	1
	mov	rdi,	1
	mov	rsi,	invite
	mov	rdx,	invite_len
	syscall
	; input matrix
	mov	r8,	0	; input str length
	mov	rcx,	7
	; input str
	mov	rdi,	0
.inp:	mov	rax,	0 
	lea	rsi,	[buffer+r8]
	mov	rdx,	buffer_len
	push	rcx
	syscall
	pop	rcx
	add	r8,	rax
	loop	.inp
	; replace spaces to 10
	mov	rdi,	buffer
	mov	rcx,	r8
	mov	al,	" "
.rep:	repne	scasb
	mov	byte[rdi-1], 10
	inc	rcx
	loop .rep
	; fill matrix
	mov	r9,	0	; index of the current element
	mov	rcx,	r8
	mov	rdi,	buffer
.fill:	mov	rsi,	rdi
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	mov	dword[matrix+r9*4], 0
	push	rax
	mov	rax,	r9
	and	rax,	0x1
	cmp	rax,	0
	pop	rax
	je	.skip
	mov	[matrix+r9*4], eax
.skip:	inc	r9
	mov	al,	10
	repne	scasb
	inc	rcx
	loop	.fill
	; print matrix
	mov	rcx,	7
	mov	rsi,	buffer
	mov	r8,	0
	mov	r9,	0
.exl:	push	rcx
	mov	rcx,	3
.inl:	mov	eax,	[matrix+r9*4]
	call	IntToStr64
	mov	byte[rsi],9
	dec	rax
	add	rsi,	rax
	add	r8,	rax
	inc	r9
	loop	.inl
	mov	byte[rsi],10
	inc	r8
	inc	rsi
	pop	rcx
	loop	.exl
	; syscall print
	mov	rsi,	buffer
	mov	rdx,	r8
	mov	rax,	1
	mov	rdi,	1
	syscall
	; exit
	mov	rdi,	0	; success
.ext:	mov	rax,	60
	syscall
.err:	mov	rax,	1
	mov	rdi,	1
	mov	rsi,	err
	mov	rdx,	err_len
	syscall
	mov	rdi,	1	; failure
	jmp	.ext

%include "../lib.asm"
