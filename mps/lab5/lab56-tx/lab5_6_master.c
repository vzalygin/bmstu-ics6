#include <avr/io.h>
#define F_CPU 3690000
#include <util/delay.h>

/* ?????? ?????????? - PE */
#define BUTTON_START 0
#define BUTTON_SHOW  1

/* ?????? SPI - PB */
#define PIN_SS   4
#define PIN_SS1  1
#define PIN_MOSI 5
#define PIN_SCK  7

/* ?????? ?????? "?????" ? Win-1251 */
#define DATA_LENGTH 5
unsigned char data[DATA_LENGTH] = {0xC3, 0xCE, 0xD9, 0xC4, 0xC0};
uint8_t currentByte = 0;

#define START_SYM 0xAA

char SpiSendReceive(char c) {
    PORTB &= ~(1 << PIN_SS1);
    SPDR = c;
    while (!(SPSR & (1 << SPIF)))
        ;
    PORTB |= (1 << PIN_SS1);
    return SPDR;
}

int main() {
    DDRB = (1 << PIN_MOSI) | (1 << PIN_SCK) | (1 << PIN_SS);
    DDRB |= (1 << PIN_SS1);
    PORTB |= (1 << PIN_SS1);

    /* ????????? DORD = 1: ??????? ??? ?????? */
    SPCR = (1 << SPE) | (1 << MSTR) | (1 << SPR0) | (1 << CPHA) | (1 << DORD);

    PORTE = (1 << BUTTON_START) | (1 << BUTTON_SHOW);
    DDRC = 0xFF;
    PORTC = 0xFF;

    while (1) {
        if (!(PINE & (1 << BUTTON_START))) {
            while (!(PINE & (1 << BUTTON_START)))
                ;

            SpiSendReceive(START_SYM);
            _delay_us(10);

            for (uint8_t i = 0; i < DATA_LENGTH; i++) {
                data[i] = SpiSendReceive(data[i]);
                _delay_us(10);
            }
        }

        if (!(PINE & (1 << BUTTON_SHOW))) {
            while (!(PINE & (1 << BUTTON_SHOW)))
                ;
            PORTC = ~data[currentByte];
            currentByte = (currentByte + 1) % DATA_LENGTH;
        }
    }

    return 0;
}
