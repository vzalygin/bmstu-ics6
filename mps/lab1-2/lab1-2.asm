.include "m8515def.inc" ;���� ����������� ��� ATmega8515
.def reg_led = r20 ;������� ��� �������� ��������� �����������
.def temp = r19 ;������� ��� ��������� (���������)
.equ START = 0 ;���������-���������: ����� ����� ������ START
.equ STOP = 1 ;���������-���������: ����� ����� ������ STOP
.org $000
rjmp INIT

INIT:
	ldi reg_led,0xFE ;����� reg_led.0 ��� ��������� LED0
	ser temp
	out DDRB,temp ;��������� ����� ����� PB �� �����
	sec ;C=1
	clr temp
	out DDRD,temp ;��������� ����� ����� PD �� ����
	ldi temp,0x03
	out PORTD,temp ;��������� ������������� ���������� ����� PD0,PD1
	;***�������� ������� ������ START***
WAITSTART:
	sbic PIND,START ;������� ����. �������, ���� ��� � �������� = 0
	rjmp WAITSTART ;������� �� �����
	;***�������� ����***
LOOP:
	out PORTB,reg_led ;����� ����������� �������� � ����
	;***�������� � ���� ��������� ������***
	; (�������� �������� �� 0.5 �)
	ldi r17,255
d1: ldi r18,255
d2: ldi r19,10
d3: dec r19
	brne d3
	dec r18
	brne d2
	dec r17
	brne d1
	;***�������� ������� ������ STOP***
	sbic PIND,STOP ;������� ����. �������, ���� ��� � �������� = 0
	rjmp CONTINUE ;������� � ����������� ������������
	rjmp WAITSTART ;������� �� �������� ������ START

CONTINUE:
	rol reg_led ;����������� ����� �������� ����� ����� �
	rjmp LOOP ;������� � ������ ���� �����
