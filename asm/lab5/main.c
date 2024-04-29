#include "stdio.h"

#define MAX 256

extern void repl(char * text, unsigned int first, unsigned int second);

int main() {
    char text[MAX];
    int first, second;
    // printf("enter the sentence (less then 256 chars):\n");
    // fgets(text, MAX, stdin);
    // printf("enter the numbers of the first and the second word to replace them:\n");
    // scanf("%d%d", &first, &second);
    repl(text, first, second);
}