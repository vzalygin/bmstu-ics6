.include "m8515def.inc" ; файл определений для ATmega8515
.def temp = r16 ;временный регистр
.equ led = 0 ;5-й бит порта PD (OC1A)
.equ start = 0 ;0-й бит порта PA
.equ start2 = 1 ;1-й бит порта PA
.equ stop = 2 ;2-й бит порта PA
;***Макросы для настройки таймера/счетчика
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
 ldi temp,high(VALUE) ;пороговое значение
 out OCR1AH,temp
 ldi temp,low(VALUE)
 out OCR1AL,temp
.endmacro
.macro tmr2
 ldi temp,high(VALUE2) ;пороговое значение
 out OCR1AH,temp
 ldi temp,low(VALUE2)
 out OCR1AL,temp
.endmacro
;***Таблица векторов прерываний
.org $000
 rjmp INIT
;***Инициализация МК
INIT:
 ldi temp,high(RAMEND) ;установка
 out SPH,temp ; указателя стека
 ldi temp,low(RAMEND) ; на последнюю
 out SPL,temp ; ячейку ОП
 ser temp ;инициализация выводов
 out DDRD,temp ; порта PD на вывод
 out PORTD,temp ;погасить LED
 clr temp ;инициализация
 out DDRA,temp ; порта PA на ввод
 ldi temp,0b00000111 ;включение подтягивающих
 out PORTA,temp ; резисторов порта PA
 tmr1
test_on:
 sbis PINA,start ;проверка состояния
 rjmp tmr1_on
 sbis PINA,start2
 rjmp tmr2_on
 rjmp test_off   ; кнопки on
 ; включение таймера
wait_0:
 sbis PINA,start ;проверка отпускания
 rjmp wait_0    ; кнопки
 rjmp test_off
wait_00:
 sbis PINA,start2
 rjmp wait_00
 rjmp test_off
test_off:
 sbic PINA,stop ;проверка состояния
 rjmp test_on ; кнопки off
 pwm_off
 ser temp
 out PORTD,temp ;погасить LED
wait_1:
 sbis PINA,stop ;проверка отпускания
 rjmp wait_1 ; кнопки
 rjmp test_on
tmr1_on:
 tmr1
 pwm_on
 rjmp wait_0
tmr2_on:
 tmr2
 pwm_on
 rjmp wait_00
