#include "stdio.h"

#define MAX 256

extern void repl(char * text, unsigned int idx1, unsigned int idx2);

int main() {
    char text[MAX];
    int first, second;
    printf("enter the sentence (less then 256 chars):\n");
    fgets(text, MAX, stdin);
    printf("enter the indexes of the first and the second word to replace them:\n");
    scanf("%d%d", &first, &second);
    repl(text, first, second);
}