.include "m8515def.inc" ;���� ����������� ��� ATmega8515
.def reg_led = r20 ;������� ��� �������� ��������� �����������
.def temp = r19 ;������� ��� ��������� (���������)
.equ START = 0 ;���������-���������: ����� ����� ������ START
.equ STOP = 1 ;���������-���������: ����� ����� ������ STOP
.def lupa = r21
.equ A = 0xFF
.equ LUPA1 = 0b11111101
.equ LUPA2 = 0b01111111
.org $000
rjmp INIT

INIT:
	ser temp
	out DDRB,temp ;��������� ����� ����� PB �� �����
	sec ;C=1
	clr temp
	out DDRD,temp ;��������� ����� ����� PD �� ����
	ldi temp,0x03
	out PORTD,temp ;��������� ������������� ���������� ����� PD0,PD1

	ldi reg_led,0b01111111
	out PORTB,reg_led

 	ser lupa

	;***�������� ������� ������ START***
WAITSTART:
	sbic PIND,START ;������� ����. �������, ���� ��� � �������� = 0
	rjmp WAITSTART ;������� �� �����
	;***�������� ����***
LOOP:
	out PORTB,reg_led ;����� ����������� �������� � ����
	;***�������� � ���� ��������� ������***
	
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

	;***�������� ������� ������ STOP***
	sbic PIND,STOP ;������� ����. �������, ���� ��� � �������� = 0
	rjmp CONTINUE ;������� � ����������� ������������
	rjmp WAITSTART ;������� �� �������� ������ START

CONTINUE:
	rjmp LOOP ;������� � ������ ���� �����
