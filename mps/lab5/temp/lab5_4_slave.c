  // „астота 1 ћ√ц
#include <avr/io.h>
#include <avr/interrupt.h>

int main(void) {
    DDRD &= ~(1 << PD2);  // PD2 Ч кнопка (вход)
    PORTD |= (1 << PD2);  // ѕодт€гивающий резистор

    DDRA |= ~0;   // PD3 Ч выход на светодиод
    PORTA |= 0; // ¬ыключить светодиод

    while (1) {
        if (!(PIND & (1 << PD2))) {  //  нопка нажата
        	TCNT0 = 0; // сброс таймера
	    	TCCR0 |= (1 << CS00 | 1 << CS00); // включение таймера с прескейлом 1024, 1 ћ√ц / 1024 = 1 к√ц (1 мс)
            while (!(PIND & (1 << PD2)));
	    	TCCR0 = 0;
	    	char temp = TCNT0;
	    	PORTA = temp; // вывод значени€ таймер
        }
    }
}
