#include "stm32f1xx_hal.h"
#ifndef LCD_H
#define LCD_H
#define E 2
// Структура для работы с конкретным дисплеем
typedef struct
{
	 I2C_HandleTypeDef *hi2c;
	 uint16_t DevAddress;
} LCD1602;
void sendData(LCD1602 *scr , uint8_t *pData); // отправка команды по четырехбитному интерфейсу
void initLCD(LCD1602 *scr); // инициализация дисплея
void writeLCD(LCD1602 *scr, uint8_t s); // вывод символа s на дисплей
void writeStringLCD(LCD1602 *scr,char *str); // вывод строки str на дисплей
void moveXY(LCD1602 *scr,uint8_t x, uint8_t y); // перемещение курсора в позицию X,Y
extern uint8_t lcd_backlight;
#endif /* LCD_H */
