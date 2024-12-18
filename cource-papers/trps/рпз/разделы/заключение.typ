= заключение

В результате выполнения курсовой работы было спроектирован компилятор для стекого языка с синтаксисом на основе обратной польской записи. Для разработки использовались:

- язык программирования rust,
- библиотеки clap, nom,
- программы nasm и ld,
- среда разработки visual studio code,
- git для версионирования кода,
- github для хранения кода и github actions для выполнения CI-процесса.

Цель приложения заключается в создании исполняемых, объектных файлов и ассемблерных листингов на основе кода на исходном языке. В ходе работы был проведен анализов процессов, определена структура программного решения, созданы грамматики синтаксиса интерфейса и исходного языка, разработаны алгоритмы, реализован парсер исходного языка. В результате создан программный продукт, полностью удовлетворяющий техническому заданию.

Тестирование подвердило надежность и корректность реализации функциональности в приложении. Сквозные тесты, написанные при помощи метода эквивалентного разбиения, гарантируют работоспособность всего приложения, как черного ящика, и создание клиентского опыта, соответствующего ожиданиям. Модульные тесты парсера проверяют на ошибки работу парсера и его соотвествие требованиям, а также ускоряют разработку за счет автоматического тестирования сложного компонента. Предоставляемая компилятором гарантия корректности при работе с памятью повысила качество программного обеспечения.

Дальнейшее развитие решения предполагает внедрение оптимизаций, улучшающих быстродействие и потребление памяти генерируемых программ, а также расширение стандартной библиотеки. 

В процессе был получен опыт разработки прикладного приложения-компилятора с использованием языка программирования Rust, тестирования при помощи сквозных тестов, создания парсеров и кодогенераторов, консольных интерфейсов. Также закреплен материал дисциплины "Технологии разработки программных систем".
