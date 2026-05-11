# Директория, где будут создан проект
cd part3
# Модуль верхнего уровеня:
set top_name cla_top
# входные исходные файлы:
set hdl_files [ list \
../adder.v ../cla_checker.v ../cla_top.v ../cla.ucf ../lfsr.v ../cla_pipelined.v ../cla_checker_pipelined.v ]
# Настройки проекта
project new $top_name.ise
project set family Virtex6
project set device xc6vlx240t
project set package ff1156
project set speed -1
# Добавление исходных описаний в проект
foreach filename $hdl_files {
    xfile add $filename
    puts "Добавление файла $filename в проект."
}
