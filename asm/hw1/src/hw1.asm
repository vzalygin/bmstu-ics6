	section .data
ALPH_LEN dd 0   ; количество символов, записанных в буфер
OUTPUT_CHAR_INFO db "  -   "
OUTPUT_CHAR_INFO_LEN equ $-OUTPUT_CHAR_INFO
INVITE db "Enter the text (26 characters):",10
INVITE_LEN equ $-INVITE
INT_TO_STR_DIST times 10 db " " 
RESULT_CHAR_AMOUNT_INFO db " different charaters ",10
RESULT_CHAR_AMOUNT_INFO_LEN equ $-RESULT_CHAR_AMOUNT_INFO 
	section .bss
INPUT resb 26   ; буфер для входной строки
ALPH resb 26    ; буфер для символов, которые встретились входной строке 
	section .text
global _start
_start:
	; приглашение на ввод 
	mov     rax, 1          ; fun=write
	mov     rdi, 1          ; stdout=1
	mov     rsi, INVITE     ; string
	mov     rdx, INVITE_LEN ; string length
	syscall                 ; system call
	; ввод входной строки
	mov     rax, 0          ; fun=read 
	mov     rdi, 0          ; stdin=0
	mov     rsi, INPUT      ; dist
	mov     rdx, 26         ; dist length
	syscall
	; преамбула внешнего цикла
	cld						; направление прямое
	mov     rcx, 26			; количество символов в буфере
	mov     rsi, INPUT		; указываем буфер с входной строкой
cycle1: ; внешний цикл. обход всех элементов
	lodsb       			; загружаем байт из последовательности
	; проверка, что элемент в аккумуляторе не встречался раньше
	push 	rcx				; запоманием значение для внешнего цикла
	mov		rcx, [ALPH_LEN] ; сколько уже было запомнено символов
	lea		rdi, [ALPH]		; указываем на буфер алфавита
	repne scasb				; ищем такой же элемент
	pop 	rcx 			; 
	je 		cycle1			; символ уже есть в алфавите 
	; найден новый символ
	; записываем его в алфавит
	lea 	rbx, [ALPH] 	; вычисляем место в алфавите для символа
	lea		rdi, [ALPH_LEN] ; --
	mov 	[rbx+rdi], al ; запоминаем символ в алфавит
	add  	DWORD[ALPH_LEN], 1 ; увеличиваем счетчик запомненных букв
	; считаем, сколько раз он встречается в последовательности
	push 	rcx				; запоманием значение для внешнего цикла
	push	rsi				; запоминаем значение для внешнего цикла
	mov 	rdx, 0			; в регистр rdx запоминаем, сколько раз встречался текущий элемент
	mov		rdi, rsi		; двигаем в регистр для команды scasb
cycle2: ; цикл поиска одинаковых элементов
	repne 	scasb			; ищем элемент такой же элемент
	inc 	rdx				; увеличиваем счетчик найденных одинаковых элементов
	; 2 джампа понадобились, тк нет прыжка по отрицанию пустоты ecx
	jecxz 	print_char_info	; если всю последовательность обошли, то уходим
	jmp		cycle2			; иначе повторяем, пока не дойдем до конца
print_char_info: ; выводим информацию о количестве вхождений символа
	; подготовка буфера OUTPUT_CHAR_INFO
	mov		[OUTPUT_CHAR_INFO], al ; на первое место записываем текущий символ
	mov		rax, rdx		; записываем количество вхождений в требуемый регистр (затирается текущий символ!)
	lea     rsi, [INT_TO_STR_DIST] ; указываем буфер, куда будем переводить число
	call IntToStr64			
	mov 	rcx, rax		; количество смиволов, которые нужно записать
	lea		rdi, [OUTPUT_CHAR_INFO+3] ; будем копировать цифры в буфер с 3 позиции (после тире)
	rep movsb				
	; вывод буфера
	add		rax, 3			; символа еще занимает начало буфера
	mov     rdx, rax		; муваем в требуемый регистр
	mov     rax, 1          ; fun=write
	mov     rdi, 1          ; stdout=1
	syscall
	; уходим на начало цикла
	pop		rsi				; восстанавливаем значение для внешнего цикла
	pop		rcx				; восстанавливаем значение для внешнего цикла
	dec 	rcx				; уменьшаем счетчик оставшихся элементов
    jnz		cycle1			; возврат на начало цикла
; вывод количества различных символов
	mov     rax, [ALPH_LEN]
	lea     rsi, [INT_TO_STR_DIST]
	call IntToStr64
	sub     rax, 1			; на один символ меньше (\n не берем)
	mov     rdx, rax		; муваем в требуемый регистр
	mov     rax, 1          ; fun=write
	mov     rdi, 1          ; stdout=1
	syscall
	; вывод заверщающего сообщения
	mov     rsi, RESULT_CHAR_AMOUNT_INFO     ; string
	mov     rdx, RESULT_CHAR_AMOUNT_INFO_LEN ; string length
	mov     rax, 1          ; fun=write
	mov     rdi, 1          ; stdout=1
	syscall
	; завершение программы
	mov     rax, 60         ; fun=exit
	xor     rdi, rdi        ; return code 0    
	syscall

%include "./../../lib.asm"