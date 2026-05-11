// структура данных – таблица;
// поиск – вычисление адреса;
// упорядочение – пузырьком;
// корректировка – удаление сдвигом.

#define MAX 65535
#define SIZE 128

typedef struct {
  unsigned short code;    // код детали
  char material_code[8];  // код материала
  char measure[8];        // единицы измерения
  int plant_number;       // номер цеха
  int consumption;        // норма расхода
} detail;

detail table[SIZE];

void swap(detail * a, detail * b) {
  detail tmp = *a;
  *a = *b;
  *b = tmp;
}

detail * find(unsigned short code) {
  return table + ((code * SIZE) / MAX);
}

void sort() {
  for (int i = 0; i < SIZE; i++) {
    for (int j = 0; j < SIZE; j++) {
      detail * a = table + j;
      detail * b = find(a->code, t);
      if (a != b) {
        swap(a, b);
      }
    }
  }
}

void remove(unsigned short idx) {
  for (int i = idx; i < SIZE-1; i++) {
    table[i] = table[i+1];
  }
}