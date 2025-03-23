.include "m8515def.inc" 
.def temp = r16 
.equ led = 0 
.equ sw0 = 0 
.equ sw1 = 1
.org $000

rjmp INIT 
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
nop
nop
rjmp led_on 

INIT:
	ldi temp,high(RAMEND) 
	out SPH,temp 
	ldi temp,low(RAMEND) 
	out SPL,temp 

	ser temp 
	out DDRB,temp 
	out PORTB,temp 

	clr temp 
	out DDRE,temp
	out DDRA,temp 

	ldi temp,0b00000001 
	out PORTE,temp 

	ldi temp,0b00000011 
	out PORTA,temp

	ldi temp,(1<<INT2)
	out GICR,temp 

	ldi temp,0 
	out MCUCR,temp 

	sei 

loop:
	nop 
	rjmp loop

led_on:
	
	sbis PINA,sw0
	rjmp led_on1

	sbis PINA,sw1
	rjmp led_on2

	rjmp led_on

led_on1: 
	cbi PORTB,led
	rcall delay1
	sbi PORTB,led

wait_0:
	sbis pina,sw0 
	rjmp wait_0
	reti
	 
led_on2: 
	cbi PORTB,led
	rcall delay2
	sbi PORTB,led

wait_1:
	sbis pina,sw1 
	rjmp wait_1
	reti 

delay1: 
	; start delay
	ldi r16,132
	d0:
		ldi r17,100
		d1: 
			ldi r18,100
			d2: dec r18 
				brne d2 
			dec r17
			brne d1
		dec r16
		brne d0
	; end delay
	ret

delay2: 
	rcall delay1
	rcall delay1
	ret
