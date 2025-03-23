.include "m8515def.inc" 
.def job = r25 
.def reg_led = r24 
.def temp = r19 
.equ START_BUTTON = 3
.equ STOP_BUTTON = 0
.equ WORKING = 1
.equ WAITING = 0
.def lupa = r21
.equ A = 1
.equ LUPA1 = 1
.equ LUPA2 = 7
.org $000

rjmp INIT
nop
rjmp start
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
rjmp stop 

INIT:
	ldi job, WAITING
	ldi temp,high(RAMEND) 
	out SPH,temp 
	ldi temp,low(RAMEND) 
	out SPL,temp 
	ser temp 
	out DDRC,temp 
	out PORTC,temp
	ldi reg_led,0b10000000
	out PORTC,reg_led 
	clr temp
	out DDRD,temp
	out DDRE, temp
	ldi temp,0b00001000 
	out PORTD,temp 
	ldi temp,0b00000001 
	out PORTE,temp
	ldi temp,((1<<INT1)|(1<<INT2))
	out GICR,temp 
	ldi temp,0 
	out MCUCR,temp 
	ldi reg_led, 1
	sei 


wait:
	cpi job, WAITING
	brne work

	rjmp wait

work:
	cpi job, WORKING
	brne wait

	;***От 7 до 1 один выключен, от 1 до 7 один включен*** 
	sbrs lupa,A
	rjmp nex
	sbrs reg_led,LUPA1
	rjmp left
	clr lupa
	ldi reg_led,0b11111101
	sec
	rjmp next
left:
	ror reg_led
	ror reg_led
	rjmp next
nex:
	sbrc reg_led,LUPA2
	rjmp right
	ser lupa
	ldi reg_led,0b10000000
	clc
	rjmp next
right:
	rol reg_led
	rol reg_led
next:

	out PORTC,reg_led ;вывод содержимого регистра в порт

	rjmp work

start:
	ldi job, WORKING

	wait_start:
		sbis pind,START_BUTTON
		rjmp wait_start
	reti

stop:
	ldi job, WAITING

	wait_stop:
		sbis pine,STOP_BUTTON
		rjmp wait_stop
	reti

delay:
	ldi r16,250
	d0:
		ldi r17,250
		d1: 
			ldi r18,8
			d2: dec r18 
				brne d2 
			dec r17
			brne d1
		dec r16
		brne d0
	ret
