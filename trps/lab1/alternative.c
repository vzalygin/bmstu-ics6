// структура данных – гнезда;
// поиск – вычисление гнезда и последовательный проход внутри;
// упорядочение – метод шелла (внутри гнезда);
// корректировка – удаление заменой.

#define MAX 65535

typedef struct {
  unsigned short detail_code; // код детали
  char material_code[8];      // код материала
  char measure[8];            // единицы измерения
  int plant_number;           // номер цеха
  int consumption;            // норма расхода
} element;

typedef struct {
  element * elements;
  int size;
} socket;

typedef struct {
  socket * sockets;
  int size;
} table;

element * find(unsigned short detail_code, table t) {
  socket s = t.sockets[(code * SIZE) / MAX];
  for (int i = 0; i < s.size; i++) {
    if (s.elements[i].detail_code == detail_code) {
      return s.elements[i];
    }
  }
}

void sort(element * es, int size) {
  int p = size/2;
  while (p > 1) {
    for (int i = 0; i < p; i++) {
      if (es[i] > es[i+p]) {
        element tmp = es[i];
        es[i] = es[i+p];
        es[i+p] = tmp;
      }
    }
    p /= 2;
  }
}

void sort_table(table t) {
  for (int i = 0; i < s.size; i++) {
    sort(t.sockets[i].elements);
  }
}

void remove(unsigned short e_idx, unsigned short s_idx, table t) {
  socket s = t.socket[s_idx]
  s.elements[e_idx] = s.elements[s.size-1];
}
