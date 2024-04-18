section .data
	Y	dd	 1, 2, 3, 4, 5, 6
		dd	 2, 8, 9,10,11,12
		dd	 3,14,15,16,17,18
		dd	19,20,21,22,23,24
		dd	 5,26,27,28,29,30
		dd	 0,32,33,34,35,36
	N	dd	 0, 0, 0, 0, 0, 0
section .bss
	RowMul	resd	1
	IntToStr resb	10
section .text
global _start
_start:
	mov	rcx,	6
	mov	rsi,	Y
	mov	rdi,	N
.cyc:	cmp	dword[rsi],	0
	je	.end1
	push	rcx
	push	rsi
	mov	rcx,	5
	mov	ebx,	[rsi]
	mov	[RowMul],	ebx
.cyc2:	add	rsi,	4
	xor	rdx,	rdx
	mov	eax,	[rsi]
	idiv	ebx,
	cmp	edx,	0
	jne	.end2
	mov	eax,	[RowMul]
	imul	dword[rsi]
	mov	[RowMul],	eax
.end2:	loop	.cyc2
	mov	ebx,	[RowMul]
	mov	[rdi],	ebx
	pop	rsi
	pop	rcx
.end1:	add	rdi,	4
	add	rsi,	24
	dec	rcx
	jne	.cyc
	mov	rcx,	6
	mov	rsi,	N
.cyc3:	xor	rax,	rax
	mov	eax,	[rsi]
	push	rsi
	lea	rsi, 	[IntToStr]
	call	IntToStr64
	sub	eax,	1
	xor	rdx,	rdx
	inc	eax
	mov	edx,	eax
	mov	rax,	1
	mov	rdi,	1
	push	rcx
	syscall
	pop	rcx
	pop	rsi
	add	rsi,	4
	loop	.cyc3

	mov	rax,	60
	mov	rdi,	0
	syscall

%include "./../lib.asm"
