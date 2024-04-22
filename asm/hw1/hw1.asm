	section .data
ALPH_LEN dd 0	; количество символов, записанных в буфер
OUTPUT_CHAR_INFO db "  -    "
OUTPUT_CHAR_INFO_LEN equ $-OUTPUT_CHAR_INFO
INVITE db "Enter the text (26 characters):",10
INVITE_LEN equ $-INVITE
INT_TO_STR_DIST times 10 db " " 
RESULT_CHAR_AMOUNT_INFO db " different charaters ",10
RESULT_CHAR_AMOUNT_INFO_LEN equ $-RESULT_CHAR_AMOUNT_INFO 
	section .bss
INPUT resb 26	; буфер для входной строки
ALPH resb 26	; буфер для символов, которые встретились входной строке 
	section .text
global _start
_start:
	; приглашение на ввод 
	mov		rax, 1			; fun=write
	mov		rdi, 1			; stdout=1
	mov		rsi, INVITE		; string
	mov		rdx, INVITE_LEN	; string length
	syscall					; system call
	; ввод входной строки
	mov		rax, 0			; fun=read 
	mov		rdi, 0			; stdin=0
	mov		rsi, INPUT		; dist
	mov		rdx, 26			; dist length
	syscall
	; преамбула внешнего цикла
	cld						; направление прямое
	mov		rcx, 26			; количество символов в буфере
	mov		rsi, INPUT		; указываем буфер с входной строкой
cycle1: ; внешний цикл. обход всех элементов
	cmp		rcx, 0			; проверяем, что еще не закончились символы
	je		ed				; если закончились, то выходим
	dec		rcx				; уменьшаем счетчик оставшихся элементов
	lodsb					; загружаем байт из последовательности
	; проверка, что элемент в аккумуляторе не встречался раньше
	push 	rcx				; запоманием значение для внешнего цикла
	mov		ecx, [ALPH_LEN]	; сколько уже было запомнено символов
	lea		rdi, [ALPH]		; указываем на буфер алфавита
	repne scasb				; ищем такой же элемент
	pop		rcx 			; возврат значение для внешнего цикла
	je		cycle1			; символ уже есть в алфавите 
	; найден новый символ
	; записываем его в алфавит
	push	rdx				; занимаем регистр для вычисления адреса
	lea		rdx, [ALPH]		; вычисляем место в алфавите для символа
	add		edx, [ALPH_LEN]	; начало буфера + смещение внутри
	mov		[rdx], al 		; запоминаем символ в алфавит
	pop		rdx				; освобождаем
	inc		DWORD[ALPH_LEN]	; увеличиваем счетчик запомненных букв
	; считаем,  сколько раз он встречается в последовательности
	push 	rcx				; запоманием значение для внешнего цикла
	push	rsi				; запоминаем значение для внешнего цикла
	mov		rdi, rsi		; двигаем в регистр для команды scasb
	cmp		rcx, 0
	mov		rdx, 1
	je		print_char_info
	mov		rdx, 0			; в регистр rdx запоминаем, сколько раз встречался текущий элемент
cycle2: ; цикл поиска одинаковых элементов
	repne	scasb			; ищем элемент такой же элемент
	inc		rdx				; увеличиваем счетчик найденных одинаковых элементов
	; 2 джампа понадобились, тк нет прыжка по отрицанию пустоты ecx
	jecxz	pre	; если всю последовательность обошли, то уходим
	jmp		cycle2			; иначе повторяем, пока не дойдем до конца
pre:
	dec		rdi
	cmp		[rdi], al
	jne		print_char_info
	inc		rdx
print_char_info: ; выводим информацию о количестве вхождений символа
	; подготовка буфера OUTPUT_CHAR_INFO
	mov		[OUTPUT_CHAR_INFO], al	; на первое место записываем текущий символ
	mov		rax, rdx		; записываем количество вхождений в требуемый регистр (затирается текущий символ!)
	lea		rsi, [INT_TO_STR_DIST]	; указываем буфер, куда будем переводить число
	call IntToStr64
	inc		rsi				; без первого символа
	dec		rax				; --
	mov		rcx, rax		; количество символов, которые нужно записать
	lea		rdi, [OUTPUT_CHAR_INFO+4]	; будем копировать цифры в буфер с 4 позиции (после тире и пробела)
	rep movsb
	; вывод буфера
	add		rax, 4			; 4 символа еще занимают начало буфера
	mov		rdx, rax		; муваем в требуемый регистр
	lea		rsi, [OUTPUT_CHAR_INFO]	; буфер для вывода
	mov		rax, 1			; fun=write
	mov		rdi, 1			; stdout=1
	syscall
	; уходим на начало цикла
	pop		rsi				; восстанавливаем значение для внешнего цикла
	pop		rcx				; восстанавливаем значение для внешнего цикла
	cmp		rcx, 0			; а не равняется ли счетчик нулю
	jne		cycle1			; возврат на начало цикла, если неверно
; вывод количества различных символов
ed:	mov		eax, [ALPH_LEN]
	lea		rsi, [INT_TO_STR_DIST]
	call IntToStr64
	sub		eax, 1			; на один символ меньше (\n не берем)
	xor		rdx, rdx		; чистим регистр, чтобы в старших разрядах ничего не было
	mov		edx, eax		; муваем в требуемый регистр
	mov		rax, 1			; fun=write
	mov		rdi, 1			; stdout=1
	syscall
	; вывод заверщающего сообщения
	mov		rsi, RESULT_CHAR_AMOUNT_INFO		; string
	mov		rdx, RESULT_CHAR_AMOUNT_INFO_LEN	; string length
	mov		rax, 1			; fun=write
	mov		rdi, 1			; stdout=1
	syscall
	; завершение программы
	mov		rax, 60			; fun=exit
	xor		rdi, rdi		; return code 0
	syscall

%include "./../../lib.asm"
