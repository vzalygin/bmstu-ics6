#include "lcd.h"
#include "stm32f1xx_hal.h"
#include "string.h"
// Функция sendData отправляет байт данных по шине I2C
// pData - отправляемый на расширитель портов байт, например 0x25,
// где верхний полубайт 2(0b0010) соответствует линиям DB7-DB4 дисплея,
// а нижний полубайт 5(0b0101) соответствует линиям LED, E, RW, RS дисплея
void sendData(LCD1602 *scr , uint8_t *pData){
	*pData |= (1<<E); // установка синхросигнала E=1
	while(HAL_I2C_Master_Transmit(scr->hi2c, scr->DevAddress, pData, 1,
			1000)!=HAL_OK){}
	HAL_Delay(25);
	*pData &=~(1<<E); // установка синхросигнала E=0
	while(HAL_I2C_Master_Transmit(scr->hi2c, scr->DevAddress, pData, 1,
	1000)!=HAL_OK){}
	HAL_Delay(25);
}
// Функция начальной инициализации дисплея scr,
// выполняет инструкции в соответствии с документацией
void initLCD(LCD1602 *scr){
	uint8_t buf;
	buf = 0x30; // первый отправляемый байт 0b00110000. Верхний полубайт представляет данные
	 // нижний полубайт 0000 представляет сигналы RS,RW,E,LED
	HAL_Delay(100); // ожидание установки питающего напряжения (например, после включения устройства)
	sendData(scr,&buf); // отправка три раза байта 0b00110000
	sendData(scr,&buf); // в соответствии с инструкцией по инициализации дисплея
	sendData(scr,&buf);
	buf = 0x20; // команда 0b00100000, выбор 4-х битного интерфейса
	sendData(scr,&buf);
	buf = 0x20; // 0b00100000, выбор количества строк дисплея и шрифт
	sendData(scr,&buf);
	buf = 0xC0; // 0b11000000, N=1(две строки), F=1(5*10)
	sendData(scr,&buf);
	buf = 0; // выключение дисплея в соответствии с инструкцией
	sendData(scr,&buf);
	buf = 0x80;
	sendData(scr,&buf);
	buf = 0; // очистка дисплея
	sendData(scr,&buf);
	buf = 0x10;
	sendData(scr,&buf);
	//I/D - установка направления движения курсора после ввода символа (1 - влево, 0 - вправо)
	//S - сдвиг курсора сопровождается сдвигом символов
	buf = 0;
	sendData(scr,&buf);
	buf = 0x30;
	sendData(scr,&buf);
	buf = 0; // включение дисплея
	sendData(scr,&buf);
	buf = 0xC8;
	sendData(scr,&buf);
}
// Функция writeLCD выводит символ s на дисплей scr
void writeLCD(LCD1602 *scr, uint8_t s){
	 uint8_t command;
	command = ((s&0xf0)|0x09); // верхний полубайт для дисплея
	 sendData(scr,&command);
	 command = ((s&0x0f)<<4)|0x09; // нижний полубайт для дисплея
	 sendData(scr,&command);
}
// Функция writeStringLCD выводит строку str на дисплей src
void writeStringLCD(LCD1602 *scr, char *str){
	for (int i=0; i<strlen(str); i++) {
		writeLCD(scr, str[i]);
	}
}
// Функция moveXY перемещает курсор на позицию X,Y
void moveXY(LCD1602 *scr,uint8_t x, uint8_t y){
	 uint8_t command, adr;
	 // проверка выхода X,Y за пределы максимальных значений
	 if (y > 1) y = 1;
	 if (x > 39) x = 39;
	 // перевод координат X,Y в адрес памяти DDRAM
	 if (y == 0)
	 adr = x;
	 if (y == 1)
	 adr = x + 0x40;
	 // так как используется 4-битный интерфейс, формируются 2 команды для перемещения в нужную позицию DDRAM
	 command = ((adr&0xf0)|0x80)|0x08; //adr&0xf0 выделение старшей тетрады,
	 //|0x80 установка старшего бита (DB7=1)
	 //|0x08 добавление 8 (1000 - LED,E,RW,RS) в младшую тетраду
	 sendData(scr,&command);
	 command = (adr<<4)|0x08;
	 sendData(scr,&command);
}
