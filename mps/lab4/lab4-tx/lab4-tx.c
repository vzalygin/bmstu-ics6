#include <avr/io.h>
/* ������ START - PB0 */
#define BUTTON_START 0
/* �������� �������� UBRR ��� ��������� �������� ��������
 9600 ��� ��� f_clk = 3,69 ��� */
const unsigned int ubrrValue = 23;
/* ������������ ������ */
#define DATA_LENGTH 3
const unsigned char data[DATA_LENGTH] = {65, 86, 82};
int main() {
    /* ������������� UART */
    /* ��������� �������� �������� */
    UBRRH = (unsigned char)(ubrrValue >> 8);
    UBRRL = (unsigned char)ubrrValue;
    /* ��������� ������ ����������� */
    UCSRB = (1 << TXEN);
    /* ��������� ������� ��������: 8 ��� ������, 1 ��� ����� */
    UCSRC = (1 << URSEL) | (3 << UCSZ0);
    /* ������������� ������ �����-������ */
    /* ��������� PB0 �� ���� */
    PORTB = (1 << BUTTON_START);
    /* ����������� ���� */
    while (1) {
        /* �������� ������� ������ */
        if (!(PINB & (1 << BUTTON_START))) {
            /* �������� ���������� ������ */
            while (!(PINB & (1 << BUTTON_START)));

            /* ���� �������� ������ */
            for (uint8_t i = 0; i < DATA_LENGTH; i++) {
                /* �������� ������������ ������ */
                while (!(UCSRA & (1 << UDRE)));
                /* �������� i-�� ����� */
                UDR = data[i];
            }
        }
    }
    return 0;
}
