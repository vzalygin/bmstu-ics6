#include <avr/io.h>
#include <avr/interrupt.h>

/* Кнопка старт - PE0 */
#define BUTTON_START 0

/* Выводы - SPI-PB */
#define PIN_SS   4
#define PIN_SS1  1
#define PIN_MOSI 5
#define PIN_SCK  7

/* Передаваемые данные */
#define DATA_LENGTH 3
const unsigned char data[DATA_LENGTH] = {'M', 'P', 'S'};

/* Счётчик переданных байтов */
volatile uint8_t data_index = 0;
/* Флаг нажатия кнопки */
volatile uint8_t start_transmission = 0;

/* Обработчик прерывания SPI */
ISR(SPI_STC_vect) {
    // Завершена передача data[data_index]
    PORTB |= (1 << PIN_SS1); // Деактивация ведомого

    data_index++;
    if (data_index < DATA_LENGTH) {
        // Активация ведомого и передача следующего байта
        PORTB &= ~(1 << PIN_SS1);
        SPDR = data[data_index];
    }
}

int main() {
    /* Настройка выводов MOSI, SCK, SS на вывод */
    DDRB = (1 << PIN_MOSI) | (1 << PIN_SCK) | (1 << PIN_SS);
    DDRB |= (1 << PIN_SS1);
    PORTB |= (1 << PIN_SS1);

    /* Инициализация SPI: включить SPI, мастер, прерывания, делитель /16 */
    SPCR = (1 << SPE) | (1 << MSTR) | (1 << SPR0) | (1 << SPIE);

    /* Настройка кнопки START (PE0) на ввод с подтяжкой */
    DDRE &= ~(1 << BUTTON_START);
    PORTE |= (1 << BUTTON_START);

    /* Разрешение глобальных прерываний */
    sei();

    while (1) {
        if (!(PINE & (1 << BUTTON_START)) && !start_transmission) {
            // Ожидание отпускания кнопки
            while (!(PINE & (1 << BUTTON_START)))
                ;

            // Подготовка передачи
            data_index = 0;
            start_transmission = 1;

            // Старт передачи первого байта
            PORTB &= ~(1 << PIN_SS1);     // Активировать ведомого
            SPDR = data[data_index];      // Передать первый байт
        }

        // Сброс флага после передачи всех данных
        if (data_index >= DATA_LENGTH) {
            start_transmission = 0;
        }
    }

    return 0;
}
