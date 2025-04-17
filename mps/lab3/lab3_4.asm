.include "m8515def.inc"
.def temp = r16

.equ STOP_PIN = 4
.equ PRESCALER_64 = ((1<<CS01)|(1<<CS00))
.equ TIMER_SETTINGS = ((1<<WGM01)|(1<<COM00)|PRESCALER_64)

.org $000
    rjmp INIT

INIT:
    ldi temp, high(RAMEND)
    out SPH, temp
    ldi temp, low(RAMEND)
    out SPL, temp

    ser temp
    out DDRB, temp
    clr temp
    out DDRA, temp
    ldi temp, 0x1F
    out PORTA, temp

    clr temp
    out TCCR0, temp

main_loop:
    sbic PINA, 0
    rjmp check_start2
    ldi temp, 40
    rjmp start_timer

check_start2:
    sbic PINA, 1
    rjmp check_start3
    ldi temp, 65
    rjmp start_timer

check_start3:
    sbic PINA, 2
    rjmp check_start4
    ldi temp, 57
    rjmp start_timer

check_start4:
    sbic PINA, 3
    rjmp check_stop
    ldi temp, 25

start_timer:
    out OCR0, temp
    ldi temp, TIMER_SETTINGS
    out TCCR0, temp
    rcall wait_release

check_stop:
    sbic PINA, STOP_PIN
    rjmp main_loop
    clr temp
    out TCCR0, temp
    rcall wait_release
    rjmp main_loop

wait_release:
    in temp, PINA
    andi temp, 0x1F
    cpi temp, 0x1F
    brne wait_release
    ret
