.include "m8515def.inc" ;файл определений для ATmega8515
.def reg_led = r20 ;регистр для текущего состояния светодиодов
.def temp = r19 ;регистр для пересылок (временный)
.equ START = 0 ;выражение-константа: номер линии кнопки START
.equ STOP = 1 ;выражение-константа: номер линии кнопки STOP
.def lupa = r21
.equ A = 1
.equ LUPA1 = 1
.equ LUPA2 = 7
.org $000
rjmp INIT

INIT:
	ser temp
	out DDRC,temp ;настройка линий порта PC на вывод
	clc
	clr temp
	out DDRD,temp ;настройка линий порта PD на ввод
	ldi temp,0x03
	out PORTD,temp ;включение подтягивающих резисторов линий PD0,PD1

	ldi reg_led,0b10000000
	out PORTC,reg_led

 	ser lupa

	;***Ожидание нажатия кнопки START***
WAITSTART:
	sbic PIND,START ;пропуск след. команды, если бит в регистре = 0
	rjmp WAITSTART ;переход по метке

	;***Основной цикл***
LOOP:	
	;***Задержка в виде вложенных циклов***
	ldi r17,250
d1: ldi r18,250
d2: ldi r19,8
d3: dec r19
	brne d3
	dec r18
	brne d2
	dec r17
	brne d1

	;***От 7 до 1 один выключен, от 1 до 7 один включен*** 
	sbrs lupa,A
	rjmp NEX
	sbrs reg_led,LUPA1
	rjmp LEFT
	clr lupa
	ldi reg_led,0b11111101
	sec
	rjmp NEXT
LEFT:
	ror reg_led
	ror reg_led
	rjmp NEXT
NEX:
	sbrc reg_led,LUPA2
	rjmp RIGHT
	ser lupa
	ldi reg_led,0b10000000
	clc
	rjmp NEXT
RIGHT:
	rol reg_led
	rol reg_led
NEXT:

	out PORTC,reg_led ;вывод содержимого регистра в порт
	;***Проверка нажатия кнопки STOP***
	sbic PIND,STOP ;пропуск след. команды, если бит в регистре = 0
	rjmp CONTINUE ;переход к продолжению переключения
	rjmp WAITSTART ;переход на проверку кнопки START

CONTINUE:
	rjmp LOOP ;переход к началу тела цикла
