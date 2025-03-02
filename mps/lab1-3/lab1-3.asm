.include "m8515def.inc" ;файл определений для ATmega8515
.def reg_led = r20 ;регистр для текущего состояния светодиодов
.def temp = r19 ;регистр для пересылок (временный)
.equ START = 0 ;выражение-константа: номер линии кнопки START
.equ STOP = 1 ;выражение-константа: номер линии кнопки STOP
.def lupa = r21
.equ A = 0xFF
.equ LUPA1 = 0b11111101
.equ LUPA2 = 0b01111111
.org $000
rjmp INIT

INIT:
	ser temp
	out DDRB,temp ;настройка линий порта PB на вывод
	sec ;C=1
	clr temp
	out DDRD,temp ;настройка линий порта PD на ввод
	ldi temp,0x03
	out PORTD,temp ;включение подтягивающих резисторов линий PD0,PD1

	ldi reg_led,0b01111111
	out PORTB,reg_led

 	ser lupa

	;***Ожидание нажатия кнопки START***
WAITSTART:
	sbic PIND,START ;пропуск след. команды, если бит в регистре = 0
	rjmp WAITSTART ;переход по метке
	;***Основной цикл***
LOOP:
	out PORTB,reg_led ;вывод содержимого регистра в порт
	;***Задержка в виде вложенных циклов***
	
	sbic lupa,A
	rjmp RIGHT

	ror reg_led
	ror reg_led
	sbic reg_led,LUPA1
	clr lupa
	rjmp NEXT
RIGHT:
	rol reg_led
	rol reg_led
	sbic reg_led,LUPA2
	ser lupa
NEXT:
	out PORTB,reg_led

	;***Проверка нажатия кнопки STOP***
	sbic PIND,STOP ;пропуск след. команды, если бит в регистре = 0
	rjmp CONTINUE ;переход к продолжению переключения
	rjmp WAITSTART ;переход на проверку кнопки START

CONTINUE:
	rjmp LOOP ;переход к началу тела цикла
