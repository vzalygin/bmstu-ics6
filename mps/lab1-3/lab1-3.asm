.include "m8515def.inc" ;���� ����������� ��� ATmega8515
.def reg_led = r20 ;������� ��� �������� ��������� �����������
.def temp = r19 ;������� ��� ��������� (���������)
.equ START = 0 ;���������-���������: ����� ����� ������ START
.equ STOP = 1 ;���������-���������: ����� ����� ������ STOP
.def lupa = r21
.equ A = 1
.equ LUPA1 = 1
.equ LUPA2 = 7
.org $000
rjmp INIT

INIT:
	ser temp
	out DDRC,temp ;��������� ����� ����� PC �� �����
	clc
	clr temp
	out DDRD,temp ;��������� ����� ����� PD �� ����
	ldi temp,0x03
	out PORTD,temp ;��������� ������������� ���������� ����� PD0,PD1

	ldi reg_led,0b10000000
	out PORTC,reg_led

 	ser lupa

	;***�������� ������� ������ START***
WAITSTART:
	sbic PIND,START ;������� ����. �������, ���� ��� � �������� = 0
	rjmp WAITSTART ;������� �� �����

	;***�������� ����***
LOOP:	
	;***�������� � ���� ��������� ������***
	ldi r17,250
d1: ldi r18,250
d2: ldi r19,8
d3: dec r19
	brne d3
	dec r18
	brne d2
	dec r17
	brne d1

	;***�� 7 �� 1 ���� ��������, �� 1 �� 7 ���� �������*** 
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

	out PORTC,reg_led ;����� ����������� �������� � ����
	;***�������� ������� ������ STOP***
	sbic PIND,STOP ;������� ����. �������, ���� ��� � �������� = 0
	rjmp CONTINUE ;������� � ����������� ������������
	rjmp WAITSTART ;������� �� �������� ������ START

CONTINUE:
	rjmp LOOP ;������� � ������ ���� �����
