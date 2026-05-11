#include <avr/io.h> 
/* Кнопка старт - PE0*/
#define BUTTON_START 0 

/* Выводы - SPI-PB*/
#define PIN_SS   4 
#define PIN_SS1  1 
#define PIN_MOSI 5 
#define PIN_SCK  7 

/* Передаваемые данные */
#define DATA_LENGTH 3 
const unsigned char data[DATA_LENGTH] = {'M', 'P', 'S'};
 
int main() { 
	/* Инициализация SPI */
	/* Настройка выводов MOSI, SCK, SS на вывод */
	DDRB = (1<<PIN_MOSI)|(1<<PIN_SCK)|(1<<PIN_SS); 
	SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0); 
	DDRB |= (1<<PIN_SS1); 
	PORTB |= (1<<PIN_SS1); 
	PORTE = (1<<BUTTON_START); 

	while(1) { 

		if (!(PINE & (1<<BUTTON_START))) { 

		while (!(PINE & (1<<BUTTON_START))) 
			; 
			/* Цикл передачи данных */
			for (uint8_t i = 0; i < DATA_LENGTH; i++) { 
				/* Выбор ведомого */
                PORTB &= ~(1<<PIN_SS1); 
 				/* Отправка i-го байта */
                SPDR = data[i]; 

                while( !(SPSR & (1<<SPIF)) ) 
                    ; 
 
                PORTB |= (1<<PIN_SS1); 
            } 
        } 
    } 
 
    return 0; 
} 
