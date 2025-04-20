#include <avr/io.h> 
#include <avr/interrupt.h> 
 
#define BUTTON_SHOW 0 

#define DATA_LENGTH 3 
unsigned char data[DATA_LENGTH] = { 0 }; 
uint8_t receivedBytes = 0; 
 

ISR(SPI_STC_vect) { 
 if (receivedBytes < DATA_LENGTH) { 
        data[receivedBytes++] = SPDR; 
    } 

 if (receivedBytes == DATA_LENGTH) { 
        PORTC = 0x00; 
    } 
} 
 
int main() { 

    SPCR = (1<<SPE)|(1<<SPIE); 
 
 
    PORTE = (1<<BUTTON_SHOW); 

    DDRC = 0xFF; 

    PORTC = 0xFF; 
 
    sei(); 
 
    uint8_t i = 0;

    while(1) { 

        if (!(PINE & (1<<BUTTON_SHOW))) { 

			while (!(PINE & (1<<BUTTON_SHOW))) 
				; 
				PORTC = ~data[i]; 
				i = (i + 1) % DATA_LENGTH; 
		} 
	} 
	return 0; 
} 
