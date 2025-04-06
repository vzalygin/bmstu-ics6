.include "m8515def.inc" ; ���� ����������� ��� ATmega8515
.def temp = r16 ;��������� �������
.equ led = 0 ;5-� ��� ����� PD (OC1A)
.equ start = 0 ;0-� ��� ����� PA
.equ start2 = 1 ;1-� ��� ����� PA
.equ stop = 2 ;2-� ��� ����� PA
;***������� ��� ��������� �������/��������
.equ PRESCALER_1 = (1<<CS10)
.equ TIMER_SETTINGS = ((1<<COM1A1)|(1<<COM1A0)|(1<<WGM10)|(1<<WGM11))
.equ VALUE = 256
.equ VALUE2 = 768
.macro pwm_on
 ldi temp,TIMER_SETTINGS
 out TCCR1A,temp
 ldi temp,PRESCALER_1
 out TCCR1B,temp
.endmacro
.macro pwm_off
 clr temp
 out TCCR1A,temp
 out TCCR1B,temp
.endmacro
.macro tmr1
 ldi temp,high(VALUE) ;��������� ��������
 out OCR1AH,temp
 ldi temp,low(VALUE)
 out OCR1AL,temp
.endmacro
.macro tmr2
 ldi temp,high(VALUE2) ;��������� ��������
 out OCR1AH,temp
 ldi temp,low(VALUE2)
 out OCR1AL,temp
.endmacro
;***������� �������� ����������
.org $000
 rjmp INIT
;***������������� ��
INIT:
 ldi temp,high(RAMEND) ;���������
 out SPH,temp ; ��������� �����
 ldi temp,low(RAMEND) ; �� ���������
 out SPL,temp ; ������ ��
 ser temp ;������������� �������
 out DDRD,temp ; ����� PD �� �����
 out PORTD,temp ;�������� LED
 clr temp ;�������������
 out DDRA,temp ; ����� PA �� ����
 ldi temp,0b00000111 ;��������� �������������
 out PORTA,temp ; ���������� ����� PA
 tmr1
test_on:
 sbis PINA,start ;�������� ���������
 rjmp tmr1_on
 sbis PINA,start2
 rjmp tmr2_on
 rjmp test_off   ; ������ on
 ; ��������� �������
wait_0:
 sbis PINA,start ;�������� ����������
 rjmp wait_0    ; ������
 rjmp test_off
wait_00:
 sbis PINA,start2
 rjmp wait_00
 rjmp test_off
test_off:
 sbic PINA,stop ;�������� ���������
 rjmp test_on ; ������ off
 pwm_off
 ser temp
 out PORTD,temp ;�������� LED
wait_1:
 sbis PINA,stop ;�������� ����������
 rjmp wait_1 ; ������
 rjmp test_on
tmr1_on:
 tmr1
 pwm_on
 rjmp wait_0
tmr2_on:
 tmr2
 pwm_on
 rjmp wait_00
