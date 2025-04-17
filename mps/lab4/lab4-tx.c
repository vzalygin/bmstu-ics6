#include <avr/io.h>
/* Кнопка START - PB0 */
#define BUTTON_START 0
/* Значение регистра UBRR для установки скорости передачи
 9600 бод при f_clk = 3,69 МГц */
const unsigned int ubrrValue = 23;
/* Передаваемые данные */
#define DATA_LENGTH 3
const unsigned char data[DATA_LENGTH] = {65, 86, 82};
int main() {
    /* Инициализация UART */
    /* Настройка скорости передачи */
    UBRRH = (unsigned char)(ubrrValue >> 8);
    UBRRL = (unsigned char)ubrrValue;
    /* Включение режима передатчика */
    UCSRB = (1 << TXEN);
    /* Установка формата передачи: 8 бит данных, 1 бит стопа */
    UCSRC = (1 << URSEL) | (3 << UCSZ0);
    /* Инициализация портов ввода-вывода */
    /* Настройка PB0 на ввод */
    PORTB = (1 << BUTTON_START);
    /* Бесконечный цикл */
    while (1) {
        /* Проверка нажатия кнопки */
        if (!(PINB & (1 << BUTTON_START))) {
            /* Ожидание отпускания кнопки */
            while (!(PINB & (1 << BUTTON_START)));

            /* Цикл передачи данных */
            for (uint8_t i = 0; i < DATA_LENGTH; i++) {
                /* Ожидание освобождения буфера */
                while (!(UCSRA & (1 << UDRE)));
                /* Отправка i-го байта */
                UDR = data[i];
            }
        }
    }
    return 0;
}
