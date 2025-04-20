#include <avr/io.h>
#include <avr/interrupt.h>

/* ������ ����� - PE0 */
#define BUTTON_START 0

/* ������ - SPI-PB */
#define PIN_SS   4
#define PIN_SS1  1
#define PIN_MOSI 5
#define PIN_SCK  7

/* ������������ ������ */
#define DATA_LENGTH 3
const unsigned char data[DATA_LENGTH] = {'M', 'P', 'S'};

/* ������� ���������� ������ */
volatile uint8_t data_index = 0;
/* ���� ������� ������ */
volatile uint8_t start_transmission = 0;

/* ���������� ���������� SPI */
ISR(SPI_STC_vect) {
    // ��������� �������� data[data_index]
    PORTB |= (1 << PIN_SS1); // ����������� ��������

    data_index++;
    if (data_index < DATA_LENGTH) {
        // ��������� �������� � �������� ���������� �����
        PORTB &= ~(1 << PIN_SS1);
        SPDR = data[data_index];
    }
}

int main() {
    /* ��������� ������� MOSI, SCK, SS �� ����� */
    DDRB = (1 << PIN_MOSI) | (1 << PIN_SCK) | (1 << PIN_SS);
    DDRB |= (1 << PIN_SS1);
    PORTB |= (1 << PIN_SS1);

    /* ������������� SPI: �������� SPI, ������, ����������, �������� /16 */
    SPCR = (1 << SPE) | (1 << MSTR) | (1 << SPR0) | (1 << SPIE);

    /* ��������� ������ START (PE0) �� ���� � ��������� */
    DDRE &= ~(1 << BUTTON_START);
    PORTE |= (1 << BUTTON_START);

    /* ���������� ���������� ���������� */
    sei();

    while (1) {
        if (!(PINE & (1 << BUTTON_START)) && !start_transmission) {
            // �������� ���������� ������
            while (!(PINE & (1 << BUTTON_START)))
                ;

            // ���������� ��������
            data_index = 0;
            start_transmission = 1;

            // ����� �������� ������� �����
            PORTB &= ~(1 << PIN_SS1);     // ������������ ��������
            SPDR = data[data_index];      // �������� ������ ����
        }

        // ����� ����� ����� �������� ���� ������
        if (data_index >= DATA_LENGTH) {
            start_transmission = 0;
        }
    }

    return 0;
}
