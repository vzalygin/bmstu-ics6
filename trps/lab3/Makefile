FLAGS = -O0

compile:
	gcc $(FLAGS) 11.c -o 11.o
	gcc $(FLAGS) 11_fixed.c -o 11_fixed.o

time: compile
	./11.o 1000; ./11_fixed.o 1000;

old: compile
	./11.o

fixed: compile
	./11_fixed.o