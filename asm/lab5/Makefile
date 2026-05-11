SRC_DIR = .
BUILD_DIR = .

TARGET = main
ASM_MODULE = lab5
EXTRA_MODULE = extra

all: run

build: ${ASM_MODULE} ${TARGET} ${EXTRA_MODULE}
	gcc -O0 -z noexecstack -no-pie ${BUILD_DIR}/${ASM_MODULE}.o ${BUILD_DIR}/${TARGET}.o ${BUILD_DIR}/${EXTRA_MODULE}.o -o ${BUILD_DIR}/${TARGET}.out

${ASM_MODULE}: ${SRC_DIR}/${ASM_MODULE}.asm	
	nasm -f elf64 ${SRC_DIR}/${ASM_MODULE}.asm -o ${BUILD_DIR}/${ASM_MODULE}.o

${TARGET}: ${SRC_DIR}/${TARGET}.c
	gcc -c ${SRC_DIR}/${TARGET}.c -o ${BUILD_DIR}/${TARGET}.o

${EXTRA_MODULE}: ${SRC_DIR}/${EXTRA_MODULE}.c
	gcc -c ${SRC_DIR}/${EXTRA_MODULE}.c -o ${BUILD_DIR}/${EXTRA_MODULE}.o

run: build
	./${BUILD_DIR}/${TARGET}.out

debug: build
	edb --run ${BUILD_DIR}/${TARGET}.out