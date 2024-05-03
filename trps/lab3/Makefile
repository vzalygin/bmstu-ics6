FLAGS = -O0

compile:
	gcc $(FLAGS) 11.c -o 11.o
	gcc $(FLAGS) 11_fixed.c -o 11_fixed.o
	gcc $(FLAGS) 11_memory.c -o 11_memory.o

old: compile
	./11.o

fixed: compile
	./11_fixed.o