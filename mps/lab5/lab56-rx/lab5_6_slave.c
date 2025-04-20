#include <avr/io.h>
#include <avr/interrupt.h>

#define BUTTON_SHOW 0
#define PIN_MISO 6

#define DATA_LENGTH 5
unsigned char data[DATA_LENGTH] = {0x41, 0x42, 0x43, 0x44, 0x45}; 
uint8_t receivedBytes = 0;
uint8_t currentByte = 0;

#define START_SYM 0xAA

ISR(SPI_STC_vect) {
    unsigned char incomingByte = SPDR;

    if (incomingByte == START_SYM) {
        SPDR = data[0];
    } else if (receivedBytes < DATA_LENGTH) {
        SPDR = data[receivedBytes + 1]; 
        data[receivedBytes] = incomingByte;
        receivedBytes++;

        if (receivedBytes == DATA_LENGTH) {
            PORTC = 0x00;
        }
    }
}

int main() {
    SPCR = (1 << SPE) | (1 << SPIE) | (1 << CPHA) | (1 << DORD);

    DDRB = (1 << PIN_MISO);
    PORTE = (1 << BUTTON_SHOW);
    DDRC = 0xFF;
    PORTC = 0xFF;

    sei();

    while (1) {
        if (!(PINE & (1 << BUTTON_SHOW))) {
            while (!(PINE & (1 << BUTTON_SHOW)))
                ;
            PORTC = ~data[currentByte];
            currentByte = (currentByte + 1) % DATA_LENGTH;
        }
    }

    return 0;
}
