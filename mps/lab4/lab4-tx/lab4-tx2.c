#include <avr/interrupt.h>
#include <avr/io.h>

#define BUTTON_START 0
const unsigned int ubrrValue = 23;
#define DATA_LENGTH 3
const unsigned char data[DATA_LENGTH] = {65, 86, 82};
volatile uint8_t index = 0;
volatile uint8_t send_flag = 0;

ISR(USART_UDRE_vect) {
    if (index < DATA_LENGTH) {
        UDR = data[index++];
    } else {
        UCSRB &= ~(1 << UDRIE);
        index = 0;
    }
}

int main() {
    UBRRH = (unsigned char)(ubrrValue >> 8);
    UBRRL = (unsigned char)ubrrValue;
    UCSRB = (1 << TXEN);
    UCSRC = (1 << URSEL) | (3 << UCSZ0);
    PORTB = (1 << BUTTON_START);
    sei();

    while (1) {
        if (!(PINB & (1 << BUTTON_START))) {
            while (!(PINB & (1 << BUTTON_START)));
            index = 0;
            UCSRB |= (1 << UDRIE);
        }
    }

    return 0;
}
