TARGET = lab3

help:
	@echo Available goals:
	@echo ' run   - create and run without debugging '
	@echo ' debug - create and debug  '
	@echo ' help  - show this message '
$(TARGET): $(TARGET).asm	
	nasm -f elf64 -l $(TARGET).lst $(TARGET).asm
	ld -o $(TARGET).e $(TARGET).o 
run: $(TARGET)
	./$(TARGET).e
debug: $(TARGET)
	edb --run $(TARGET).e