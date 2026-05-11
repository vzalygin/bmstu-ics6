#include <avr/interrupt.h>
#include <avr/io.h>
/* Кнопка SHOW - PB0 */
#define BUTTON_SHOW 0
/* Значение регистра UBRR для установки скорости передачи
 9600 бод при f_clk = 3,69 МГц */
const unsigned int ubrrValue = 23;
/* Принимаемые данные */
#define DATA_LENGTH 3
unsigned char data[DATA_LENGTH] = {0};
uint8_t receivedBytes = 0;
/* Обработчик прерывания UART_RXC */
ISR(USART_RX_vect) {
    if (receivedBytes < DATA_LENGTH) {
        data[receivedBytes++] = UDR;
    }
}
int main() {
    /* Инициализация UART */
    /* Настройка скорости передачи */
    UBRRH = (unsigned char)(ubrrValue >> 8);
    UBRRL = (unsigned char)ubrrValue;
    /* Включение режима приемника с прерываниями */
    UCSRB = (1 << RXEN) | (1 << RXCIE);
    /* Установка формата передачи: 8 бит данных, 1 бит стопа */
    UCSRC = (1 << URSEL) | (3 << UCSZ0);
    /* Инициализация портов ввода-вывода */
    /* Настройка PB0 на ввод */
    PORTB = (1 << BUTTON_SHOW);
    /* Настройка PC на вывод */
    DDRC = 0xFF;
    /* Погасить светодиоды, подключенные к PC */
    PORTC = 0xFF;
    /* Глобальное разрешение прерываний */
    sei();
    /* Вывод полученных данных на светодиоды, байт за байтом */
    uint8_t i = 0; /* Счетчик байтов */
    /* Бесконечный цикл */
    while (1) {
        /* Проверка нажатия кнопки */
        if (!(PINB & (1 << BUTTON_SHOW))) {
            /* Ожидание отпускания кнопки */
            while (!(PINB & (1 << BUTTON_SHOW)));

            /* Вывод данных с инверсией битов для светодиодов */
            PORTC = ~data[i];
            i = (i + 1) % DATA_LENGTH;
        }
    }
    return 0;
}
