#import "@docs/gost732-2017:0.1.1": *

= Тестирование программного продукта

== Описание выбранных стратегий, способов, методов тестирования
#h(0.5em)

В качестве основной стратегиии выбрано функциональное тестирование. Данная стратегия основывается на принципе "черного ящика", что делает ее максимально близкой к опыту, который получает пользователь при использовании программного решения @технология-программирования.

В рамках стратегии функционального тестирования реализованы сквозные автотесты, покрывающие функциональность приложения. Данные автотесты гарантируют корректность работы основных путей программного продукта, а следовательно и требуемое качество пользовательского опыта. Скозные автотесты реализованы за счет вспомогательной программы, которая собирает основную программу-компилятор и через средства операционной системы проверяет работоспособность за счет вызовов программы и проверки результатов работы, как если бы это выполнял сам пользователь. Для составления тестов используется метод эквивалентного разбиения.

Для компонента парсера используется структурное тестирование. Модульные тесты, написанные в рамках стратегии структурного тестирования, позволяют гарантировать корректность работы каждой части парсера и компонента в целом. Наличие модульных тестов обусловленно сложностью устройства парсера и его хрупкостью при внесении изменений. Для составления тестов используется метод покрытия по операторам.

Таким образом, в рамках тестирования программного продукта используется комбинированный подход.

== Функциональное тестирование программного решения
#h(0.5em)

Таблица @классы-эквивалентности иллюстрирует выделенные классы эквивалентности. Для выделения классов эквивалентности использованы соображения о возможных значениях флагов вызова программы и возможных используемых конструкций в коде программм на исходном языке. 

#таблица(table(
  columns: (1fr, 1fr, 1fr),
  [ Параметр разбиения ], [ Правильные классы эквивалентности ], [ Неправильные классы эквивалентности ],
  [ Флаги вызовы ], [ Известные флаги ], [ Неизвестный флаги ],
  [ Входной файл ], [ Существующий входной файл ], [ Несуществующий входной файл ],
  [ Синтаксис кода ], [ Корректный синтаксис, корректное использование конструкций языка ], [ Неизвестный символ, Неизвестное имя ],
))[ Выделенные классы эквивалентности ] <классы-эквивалентности>

Таблица @сквозные-тесты показывает фрагмент тестов по методу эквивалентного разбиения. 

#[ #set text(size: 11pt)
#таблица(table(
  columns: (0.45fr, 1fr, 0.8fr, 1fr, 1fr, 1fr, 0.8fr),
  [ № ], [Класс \ эквивалентности], [ Аргументы вызова ],  [ Входной файл ], [ Ожидаемый \ результат ], [ Результат \ теста ], [ Вывод ],
  [ 1 ], [ Неизвестный флаг ], [ -a ], [ Нет ], [ Ошибка, неизвестный флаг ], [ Ошибка, неизвестный флаг ], [ Корректная \ работа ],
  [ 2 ], [ Неизвестный флаг ], [ \--abc ], [ Нет ], [ Ошибка, неизвестный флаг ], [ Ошибка, неизвестный флаг ], [ Корректная \ работа ],
  [ 3 ], [ Несущетвующий файл ], [ Нет ], [ Несуществующий файл ], [ Ошибка, файл не найден ], [ Ошибка, файл не найден ], [ Корректная \ работа ],
  [ 4 ], [ Неизвестный символ ], [ Нет ], [ \/ ], [ Ошибка, неизвестный символ \/ ], [ Ошибка, неизвестный символ \/ ], [ Корректная \ работа ],
  [ 5 ], [ Неизвестное имя ], [ Нет ], [ foo ], [ Ошибка, неизвестное имя foo ], [ Ошибка, неизвестное имя foo ], [ Корректная \ работа ],
  [ 6 ], [ Известный флаг ], [ -h ], [ Нет ], [ Сообщение помощи ], [ Сообщение помощи ], [ Корректная \ работа ],
  [ 7 ], [ То же ], [ \--help ], [ Нет ], [ Сообщение помощи ], [ Сообщение помощи ], [ Корректная \ работа ],
  [ 8 ], [ "" ], [ -V ], [ Нет ], [ Сообщение с версией программы ], [ Сообщение с версией программы ], [ Корректная \ работа ],
  [ 9 ], [ "" ], [ \--version ], [ Нет ], [ Сообщение с версией программы ], [ Сообщение с версией программы ], [ Корректная \ работа ],
  [ 10 ], [ Известный флаг, существующий входной файл, корректный синтаксис ], [ Нет флагов ], [ Пустой файл ], [ Генерация исполняемого файла ], [ Генерация исполняемого файла ], [ Корректная \ работа ],
  [ 6 ], [ То же ], [ -с ], [ Пустой файл ], [ Генерация объектоного файла ], [ Генерация объектоного файла ], [ Корректная \ работа ],
  [ 7 ], [ "" ], [ \--assemble-only ], [ Пустой файл ], [ Генерация объектоного файла ], [ Генерация объектоного файла ], [ Корректная \ работа ],
  [ 8 ], [ "" ], [ -S ], [ Пустой файл ], [ Генерация ассемблерного листинга ], [ Генерация ассемблерного листинга ], [ Корректная \ работа ],
  [ 9 ], [ "" ], [ \--compile-only ], [ Пустой файл ], [ Генерация ассемблерного листинга ], [ Генерация ассемблерного листинга ], [ Корректная \ работа ],
  [ 10 ], [ Корректная работа чисел и операции вывода ], [ Нет ], [ 1 . ], [ Исполняемый файл, вывод: 1 ], [ Исполняемый файл, вывод: 1 ], [ Корректная \ работа ],
  [ 11 ], [ Корректная работа операций ввода и вывода ], [ < (echo 1) ], [ & . ], [ Исполняемый файл, вывод: 10 ], [ Исполняемый файл, вывод: 1 ], [ Корректная \ работа ],
  [ 12 ], [ Корректная трансляция комментариев ], [ Нет ], [ 1 . \# 123 + ], [ Исполняемый файл, вывод: 1 ], [ Исполняемый файл, вывод: 1 ], [ Корректная \ работа ],
  [ 13 ], [ Корректная трансляция операции сложения ], [ Нет ], [ 1 1 + . ], [ Исполняемый файл, вывод: 2 ], [ Исполняемый файл, вывод: 2 ], [ Корректная \ работа ],
  [ 14 ], [ Корректная трансляция операции вычитания ], [ Нет ], [ 1 2 - . ], [ Исполняемый файл, вывод: -1 ], [ Исполняемый файл, вывод: -1 ], [ Корректная \ работа ]
))[ Фрагменты сквозных тестов ] <сквозные-тесты>
]

В таблице выше приведен фрагмент сквозных тестов. Остальные тесты составлены аналогичным образом.

== Структурное тестирование компонента парсера
#h(0.5em)

При использовании метода покрытия операторов должны быть тесты, покрывающие все операторы тестируемого компонента. В таблице @модульные-тесты приведены результаты структурного тестирования.

#[ #set text(size: 11pt)
#таблица(table(
  columns: (auto, 1.1fr, 1fr, 1fr, 1fr, 0.9fr),
  [№], [ Покрываемые \ операторы ], [ Код на исходном языке ], [ Фактический \ результат ], [ Ожидаемый \ результат ], [ Вывод ],
  [ 1 ], [ Подпрограмма аксиомы ], [ Пустая строка ], [ {} \ (Пустое АСТ) ], [ {} \ (Пустое АСТ) ], [ Корректная \ работа ],
  [ 1 ], [ Подпрограмма аксиомы ], [ ; ], [ Ошибка, неизвестный символ ], [ Ошибка, неизвестный символ ], [ Корректная \ работа ],
  [ 1 ], [ Подпрограмма комментариев ], [ 1 \# foo ], [ { 1 } ], [ { 1 } ], [ Корректная \ работа ],
  [ 2 ], [ Подпрограмма int ], [ 42 ], [ { int(42) } ], [ { int(42) } ], [ Корректная \ работа ],
  [ 3 ], [ Подпрограмма add ], [ + ], [ { add } ], [ { add } ], [ Корректная \ работа ],
  [ 4 ], [ Подпрограмма sub ], [ - ], [ { sub } ], [ { sub } ], [ Корректная \ работа ],
  [ 5 ], [ Подпрограмма mul ], [ \* ], [ { mul } ], [ { mul } ], [ Корректная \ работа ],
  [ 6 ], [ Подпрограмма div ], [ \/ ], [ { div } ], [ { div } ], [ Корректная \ работа ],
  [ 7 ], [ Подпрограмма print ], [ . ], [ { print } ], [ { print } ], [ Корректная \ работа ],
  [ 8 ], [ Подпрограмма dup ], [ dup ], [ { dup } ], [ { dup } ], [ Корректная \ работа ],
  [ 9 ], [ Подпрограмма drop ], [ drop ], [ { drop } ], [ { drop } ], [ Корректная \ работа ],
  [ 10 ], [ Подпрограмма take ], [ take ], [ { take } ], [ { take } ], [ Корректная \ работа ],
  [ 11 ], [ Подпрограмма list ], [ \[ 1 \] ], [ { list } ], [ { list } ], [ Корректная \ работа ],
  [ 12 ], [ Подпрограмма apply ], [ ! ], [ { apply } ], [ { apply } ], [ Корректная \ работа ],
  [ 13 ], [ Подпрограмма and ], [ and ], [ { and } ], [ { and } ], [ Корректная \ работа ],
  [ 14 ], [ Подпрограмма or ], [ or ], [ { or } ], [ { or } ], [ Корректная \ работа ],
  [ 15 ], [ Подпрограмма not ], [ not ], [ { not } ], [ { not } ], [ Корректная \ работа ],
  [ 16 ], [ Подпрограмма equals ], [ \== ], [ { equals } ], [ { equals } ], [ Корректная \ работа ],
  [ 17 ], [ Подпрограмма not_equals ], [ != ], [ { not_equals } ], [ { not_equals } ], [ Корректная \ работа ],
  [ 18 ], [ Подпрограмма less ], [ < ], [ { less } ], [ { less } ], [ Корректная \ работа ],
  [ 19 ], [ Подпрограмма greater ], [ > ], [ { greater } ], [ { greater } ], [ Корректная \ работа ],
  [ 20 ], [ Подпрограмма less_equals ], [ <= ], [ { less_equals } ], [ { less_equals } ], [ Корректная \ работа ],
  [ 21 ], [ Подпрограмма greater_equals ], [ >= ], [ { greater_equals } ], [ { greater_equals } ], [ Корректная \ работа ],
  [ 22 ], [ Подпрограмма if ], [ ? ], [ { if } ], [ { if } ], [ Корректная \ работа ],
  [ 23 ], [ Подпрограмма bool ], [ b ], [ { bool } ], [ { bool } ], [ Корректная \ работа ],
  [ 24 ], [ Подпрограмма bind ], [ :foo ], [ { bind } ], [ { bind } ], [ Корректная \ работа ],
  [ 25 ], [ Подпрограмма put ], [ foo ], [ { put } ], [ { put } ], [ Корректная \ работа ],
  [ 26 ], [ Подпрограмма scan ], [ & ], [ { scan } ], [ { scan } ], [ Корректная \ работа ],
))[ Модульные тесты для компонента парсера ] <модульные-тесты>
]

Как демонстрирует таблица выше, компонент парсера работает корректно и распознает все лексемы.
