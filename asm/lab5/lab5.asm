; Дан текст не более 255 символов. Слова отделяются друг от друга пробелами. Поменять местами пары слов с указанными номерами.
	section .data
too_big_idx		db	"err: incorrect index of the word",10,0
	section .bss
buffer			resb	255
	section .text
global	repl
extern	print_text

repl:	; prologue
	push	rbp
	mov	rbp,	rsp
	push	rsi
	push	rax
	push	rbx
	push	rdx
	push	r8
	push	r9
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	; body
	cld
	push	rdi
	mov	r8,	rsi	; idx1
	mov	r9,	rdx	; idx2
	cmp	r8,	r9
	je	.skip		; if idxes are same, no need to replace
	jl	.less
	xchg	r8,	r9
.less:	mov	r10,	-1	; current idx
	; find null (end of string)
	mov	al,	0
	dec	rdi
.l1:	inc	rdi
	inc	r10
	cmp	[rdi],	al
	jne	.l1
	mov	r11,	r10	; length of string
	inc	r11
	; search first word
	xor	r10,	r10		
	mov	rdi,	[rsp]	; get start of string
	mov	rcx,	r11
	mov	al,	" "
.l2:	cmp	r10,	r8
	je	.e2
repne	scasb
	inc	r10
	inc	rcx
	loop	.l2
	cmp	r10,	r8
	je	.e2
	jmp	.etbi
.e2:	mov	r12,	rdi	; pointer to first word
repne	scasb
	mov	r13,	rdi
	sub	r13,	r12
	dec	r13		; length of the first word
	; search second word
	xor	r10,	r10		
	mov	rdi,	[rsp]	; get start of string
	mov	rcx,	r11
	mov	al,	" "
.l3:	cmp	r10,	r9
	je	.e3
repne	scasb
	inc	rcx
	inc	r10
	loop	.l3
	jmp	.etbi
.e3:	mov	r14,	rdi	; pointer to second word
repne	scasb
	mov	r15,	rdi
	sub	r15,	r14
	dec	r15		; length of the second word
	; copy parts to the buffer
	mov	rsi,	r12
	mov	rdi,	buffer
	mov	rcx,	r13
rep	movsb			; copy first word to the buffer
	mov	rsi,	r14
	mov	rcx,	r15
rep	movsb			; copy second word to the buffer
	lea	rsi,	[r12+r13]
	mov	rcx,	r14
	sub	rcx,	r13
	sub	rcx,	r12
rep	movsb			; copy text between words
	; replace words
	mov	rdi,	r12
	lea	rsi,	[buffer+r13]
	mov	rcx,	r15
rep	movsb
	mov	rcx,	r14
	sub	rcx,	r13
	sub	rcx,	r12	
rep	movsb
	lea	rsi,	[buffer]
	mov	rcx,	r13
rep	movsb
	; print the same str
.skip:	pop	rdi
	call	print_text
	; epilogue
.ret:	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	pop	r9
	pop	r8
	pop	rdx
	pop	rbx
	pop	rax
	pop	rsi
	pop	rbp
	ret
.etbi:	pop	rax
	mov	rdi,	too_big_idx
	call	print_text
	jmp	.ret