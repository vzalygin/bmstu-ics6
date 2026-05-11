#include <avr/io.h> 
#define F_CPU 3690000 
#include <util/delay.h> 

#define BUTTON_START 0 
#define BUTTON_SHOW  1 

#define PIN_SS   4 
#define PIN_SS1  1 
#define PIN_MOSI 5 
#define PIN_SCK  7 
 

#define DATA_LENGTH 6 
unsigned char data[DATA_LENGTH] = {0x41, 0x54, 0x6D, 0x65, 0x67, 0x61}; 
uint8_t currentByte = 0;
 
#define START_SYM 0xAA 
 
char SpiSendReceive(char c) { 

    PORTB &= ~(1<<PIN_SS1); 

    SPDR = c; 
    while( !(SPSR & (1<<SPIF)) ) 
        ; 

    PORTB |= (1<<PIN_SS1); 

    return SPDR; 
} 
 
int main() { 

    DDRB = (1<<PIN_MOSI)|(1<<PIN_SCK)|(1<<PIN_SS); 
    SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0)|(1<<CPHA); 
 

    DDRB |= (1<<PIN_SS1); 
    PORTB |= (1<<PIN_SS1); 

    PORTE = (1<<BUTTON_START)|(1<<BUTTON_SHOW); 

    DDRC = 0xFF; 

    PORTC = 0xFF; 
 
    while(1) { 

        if (!(PINE & (1<<BUTTON_START))) { 

            while (!(PINE & (1<<BUTTON_START))) 
                ; 

            SpiSendReceive(START_SYM); 

            _delay_us(10); 
 

            for (uint8_t i = 0; i < DATA_LENGTH; i++) { 

                data[i] = SpiSendReceive(data[i]); 

                _delay_us(10); 
            } 
        } 
 
        if (!(PINE & (1<<BUTTON_SHOW))) { 
 
            while (!(PINE & (1<<BUTTON_SHOW))) 
                ; 
 
            PORTC = ~data[currentByte]; 
            currentByte = (currentByte + 1) % DATA_LENGTH; 
        } 
    } 
 
    return 0; 
} 
