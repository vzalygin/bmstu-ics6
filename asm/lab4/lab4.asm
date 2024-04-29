; Дана матрица 7х3. Обнулить элементы с четной суммой индексов. Организовать ввод матрицы и вывод результатов.
	section .data
height			equ 	7
width			equ	3	
matrix times 21 	dd 	0
invite			db 	"Enter the  7x3:",10
invite_len		equ	$-invite
input times 100		db	" "
input_len		equ	$-input
err			db	"Something went wrong due execution",10
err_len			equ	$-err
i			db	0
j			db	0
four			db	4
	section .bss
	section .text
global _start
_start:
	; input invite
	mov	rax,	1
	mov	rdi,	1
	mov	rsi,	invite
	mov	rdx,	invite_len
	syscall
	; input loop
	mov	rcx,	height
.inp:	push	rcx
	; clear input buf
	mov	rcx,	width
	mov	al,	" "
	mov	rsi,	input
rep	scasb
	; input
	mov	rax,	0 
	mov	rdi,	0
	mov	rsi,	input
	mov	rdx,	input_len
	syscall
	; parse numbers
	mov	rcx,	width
	mov	al,	" "
.prs:	mov	rbx,	rsi
	; find space after num
repne	cmpsb
	mov	byte[rsi-1],10
	push	rsi
	mov	rsi,	rbx
	xor	rax,	rax
	call	StrToInt64
	cmp	rbx,	0
	jne	.err
	; write a num to matrix
	push	rax
	mov	al,	[i]
	mul	byte[four]
	add	al,	[j]
	mov	rbx,	rax
	pop	rax
	mov	[ebx+matrix],eax
	pop	rsi
	inc	byte[j]
	; loop parse
	loop	.prs
	pop	rcx
	inc	byte[i]
	; loop string input
	dec	rcx
	jne	.inp
	; exit
	xor	rdi,	rdi	; success
.ext:	mov	rax,	60
	syscall
.err:	mov	rax,	1
	mov	rdi,	1
	mov	rsi,	err
	mov	rdx,	err_len
	syscall
	mov	rdi,	100	; failure
	jmp	.ext

%include "./../../lib.asm"
