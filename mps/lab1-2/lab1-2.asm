.include "m8515def.inc" ;файл определений для ATmega8515
.def reg_led = r20 ;регистр для текущего состояния светодиодов
.def temp = r19 ;регистр для пересылок (временный)
.equ START = 0 ;выражение-константа: номер линии кнопки START
.equ STOP = 1 ;выражение-константа: номер линии кнопки STOP
.org $000
rjmp INIT

INIT:
	ldi reg_led,0xFE ;сброс reg_led.0 для включения LED0
	ser temp
	out DDRB,temp ;настройка линий порта PB на вывод
	sec ;C=1
	clr temp
	out DDRD,temp ;настройка линий порта PD на ввод
	ldi temp,0x03
	out PORTD,temp ;включение подтягивающих резисторов линий PD0,PD1
	;***Ожидание нажатия кнопки START***
WAITSTART:
	sbic PIND,START ;пропуск след. команды, если бит в регистре = 0
	rjmp WAITSTART ;переход по метке
	;***Основной цикл***
LOOP:
	out PORTB,reg_led ;вывод содержимого регистра в порт
	;***Задержка в виде вложенных циклов***
	; (вставить задержку на 0.5 с)
	ldi r17,255
d1: ldi r18,255
d2: ldi r19,10
d3: dec r19
	brne d3
	dec r18
	brne d2
	dec r17
	brne d1
	;***Проверка нажатия кнопки STOP***
	sbic PIND,STOP ;пропуск след. команды, если бит в регистре = 0
	rjmp CONTINUE ;переход к продолжению переключения
	rjmp WAITSTART ;переход на проверку кнопки START

CONTINUE:
	rol reg_led ;циклический сдвиг регистра влево через С
	rjmp LOOP ;переход к началу тела цикла
