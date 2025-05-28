  // ������� 1 ���
#include <avr/io.h>
#include <avr/interrupt.h>

int main(void) {
    DDRD &= ~(1 << PD2);  // PD2 � ������ (����)
    PORTD |= (1 << PD2);  // ������������� ��������

    DDRA |= ~0;   // PD3 � ����� �� ���������
    PORTA |= 0; // ��������� ���������

    while (1) {
        if (!(PIND & (1 << PD2))) {  // ������ ������
        	TCNT0 = 0; // ����� �������
	    	TCCR0 |= (1 << CS00 | 1 << CS00); // ��������� ������� � ���������� 1024, 1 ��� / 1024 = 1 ��� (1 ��)
            while (!(PIND & (1 << PD2)));
	    	TCCR0 = 0;
	    	char temp = TCNT0;
	    	PORTA = temp; // ����� �������� ������
        }
    }
}
