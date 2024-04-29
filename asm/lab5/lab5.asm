; Дан текст не более 255 символов. Слова отделяются друг от друга пробелами. Поменять местами пары слов с указанными номерами.
	section .data
hello	db	"hello from asm",10,0
	section .bss
	section .text
global	repl
extern	print_text
repl:	; prologue
	push	rbp
	mov	rbp,	rsp
	mov	rdi,	hello
	call	print_text
	; epilogue
	pop	rbp
	ret