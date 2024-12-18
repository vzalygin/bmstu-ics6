#import "@docs/gost732-2017:0.1.1": *

= Анализ требований и уточнение спецификаций

== Анализ задания и выбор технологии, языка и среды разработки <анал-задания>

В соответствии с требованиями технического задания необходимо разработать программу, которая транслироватьк коды на исходном языке. Компилятор должен обеспечивать поддержку ряда синтаксических конструкций, представляющих исходный язык и перечисленных в техническом задании. Исполняемые файлы, объектные файлы, ассемлерные листинги, являющиеся результатом работы компилятора, должны соответствовать набору команд x86-64 @спецификация-ассемблера-x64. Программное обеспечение должно работать под управлением ОС Linux и иметь интерфейс командной строки.

Исторически к программам-компиляторам предъявляются требования по скорости работы, нативности, наличию интерфейса командной строки. Иными словами, привычный компилятор -- скомпилированное нативное CLI-приложение без сборщика мусора. При разработке решения  также учитываются общие требования к программному обеспечению данной направленности, перечисленные раннее.

Вышеперечисленные требования сужают диапазон подходящих языков программирования до нескольких вариантов: C, C++, Rust, Zig. В результате по совокупности факторов был выбран язык Rust. Компилятор данного языка обеспечивает автоматический контроль за состоянием памяти без использования сбощика мусора, сам язык обладает наиболее строгой системой типов (среди предложенных) @документация-rust. Указанные особенности Rust позволяют писать безопасное решение/*(TODO: рофл линк на новость про безопасные языки США)*/ и недопускать ошибки в программном обеспечении. В д @сравнение-языков-программирования показаны результаты сравнения языков программирования.

Для разработки на данном языке принято использовать Visual Studio Code, поэтому она выбрана в качестве среды разработки.

Поскольку процессы в рамках предметной области (создание исполняемых файлов, объектных файлов, ассемблерных листингов) удобно описывать как последовательность вызовов функций, поэтапно преобразующих код от исходного языка до исполняемого файла, рационально использовать структурный подход. Структурный подход также является идиоматичным при разработке на Rust.

#таблица(table(
  columns: (1fr, 1fr, 1fr, 1fr, 1.1fr),
  [], [ C ], [ C++ ], [ Zig ], [ Rust ],
  [ Работа с памятью ], [ Ручная ], [ Ручная ], [ Ручная ], [ Автоматическая ],
  [ Компиляция в нативный код], [ Да ], [ Да ], [ Да ], [ Да ],
  [ Зрелость и стабильность ], [ Да ], [ Да ], [ Нет ], [ Скорее да ],
  [ Современные методы разработки ], [ Нет ], [ Да ], [ Да ], [ Да ]
))[ Сравнение свойств языков программирования ] <сравнение-языков-программирования>

При создании программного обеспечения целесообразно проводить разработку нисходящим способом, как одним рекомендуемых @технология-программирования. Версионирование программного обеспечения осуществляется при помощи инструмента git. Для проверки работоспособности используются автотесты, а в репозитории проекта настроен CI-процесс, который запускает автотесты с целью проверки изменений при попытке влития.

Для создания интерфейса командной строки рационально использовать готовую библиотеку описания интерфейса -- Clap @документация-clap. Для разбора исходных кодов можно использовать комбинаторный подход и библиотеки, предоставляющие набор компонентов для построения генераторов комбинаторых парсеров. В данном случае используется библиотека Nom @документация-nom. С целью ускорения разработки рационально использовать готовые решения для ассемблирования и компоновки. Под целевую платформу (Linux x64) одними из самых распрастраненных являются ассемблер nasm и компоновщик ld, они используются в рамках данной разработки.

Характеристики разработки показаны в д @характеристики-разработки.

#таблица(table(
  columns: (1fr, 1fr),
  [ Характеристика ], [ Значение ],
  [ Язык программирования ], [ Rust ],
  [ Среда разработки ], [ Visual Studio Code ],
  [ Система контроля версий ], [ Git ],
  [ Используемые библиотеки и зависимости ], [ Clap, Nom, Nasm, Ld ],
  [ Подход к разработке ], [ Нисходящий ],
  [ Поддерживаемые платформы ], [ Linux ],
  [ Поддерживаемые наборы команд ], [ x64 ],
))[ Характеристики разработки ] <характеристики-разработки>

== Анализ процессов <анал-процессов>

В соответствии с техническим заданием (приложение Б) программное решение должно обеспечивать создание различных выходных файлов.

Для разработки решения необходимо разложить процесс создания выходных файлов на этапы.

Процесс создания ассемблерного листинга можно разбить на 2 этапа:

- разбор кода программы,
- трансляция в языка ассемблера (компиляция).

В случае, если необходимо собрать объектный файл, то к 2 этапам создания ассемблерного листинга добавляется еще один этап -- "ассемблирование в объектный файл".

В случае, если необходимо сделать исполняемый файл, то к 3 этапам сборки объектного файла добавляется еще один этап -- "компоновка исполняемого файла".

На рисунке @функциональная-диаграмма-база представлена функциональная диаграмма процесса трансляции программы при помощи программного решения.

Рисунок @функциональная-диаграмма-трансляция уточняет блок A0, процесс трансляции исходного кода.

Рисунок @функциональная-диаграмма-сборка уточняет блок А3, процесс сборки.

#рис(image("../материалы/функциональная диаграмма база.png", width: 100%), расположение: none)[ Функциональная диаграмма ] <функциональная-диаграмма-база>

#рис(image("../материалы/функциональная диаграмма трансляция исходного кода.png", width: 110%), расположение: none)[ Функциональная диаграмма, уточняющая процесс трансляции ] <функциональная-диаграмма-трансляция>

#рис(image("../материалы/функциональная диаграмма сборка исполняемого файла.png", width: 110%), расположение: none)[ Функциональная диаграмма, уточняющая процесс сборки ] <функциональная-диаграмма-сборка>

== Анализ вариантов использования

Поскольку техническое задание предполагает реализацию различных вариантов использования программы, целесообразно показать их на диаграмме вариантов использования. Рисунок @диаграмма-вариантов-использования показывает возможности использования программного обеспечения.

#рис(image("../материалы/курсач_трпс-OK Диаграмма вариантов использования.drawio.png", height: 40%), расположение: none)[ 
  Диаграмма вариантов использования
] <диаграмма-вариантов-использования>

На основе диаграммы вариантов использования можно составить ключевые варианты использования. В таблице @вариант-использования1 содержится информация о взаимодействии программиста с системой при генерации исполняемого файла с учетом ошибок, которые программист может допустить в программе.

#таблица(table(
  columns: (1fr, 1fr),
  [Действия пользователя], [Отклик системы],
  [ #set align(left)
1) Программист создает файл кодом, составляет команду вызовы компилятор и делает вызов. \
2) Программист исправляет ошибки в файле с кодом. \
3) Программист запускает исполняемый файл или передает его на дальнейшее исполнение.
  ], [ #set align(left)
1) Компилятор возвращает сообщение с синтаксической ошибкой. \
2) Компилятор выполняет генерацию и порождает исполняемый файл.
  ],
))[ Сценарий генерации исполняемого файла] <вариант-использования1>

Одним из основных сценариев является генерация объектных файлов, которые за счет интеграции через систему сборки, могут быть скомопонованы с другими объектными файлами. Таблица @вариант-использования2 демонстирует сценарий генерации объектоного файла через использование системы сборки.

#таблица(table(
  columns: (1fr, 1fr),
  [Действия пользователя], [Отклик системы],
  [ #set align(left)
1) Программист создает файл кодом, включает файл в список системы сборки, вызывает систему сборки, которая составляет дает команду компилятору. \
2) Система сборки компонует полученный объектный файл с другими объектными файлами в исполняемый файл. \
3) Программист запускает исполняемый файл или передает его на дальнейшее исполнение.
  ], [ #set align(left)
1) Компилятор выполняет генерацию объектного файла в соответствии с переданными флагами.
  ],
))[ Сценарий генерации исполняемого файла] <вариант-использования2>