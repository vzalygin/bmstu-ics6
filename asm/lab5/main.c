#include "stdio.h"

#define MAX 256

extern void repl(char * text, unsigned int idx1, unsigned int idx2);

int main() {
    char text[MAX];
    unsigned int c, first, second;
    printf("enter the sentence (less then 256 chars):\n");
    fgets(text, MAX, stdin);
    printf("enter amount of pairs:\n");
    scanf("%d", &c);
    for (int i = 0; i < c; ++i) {
        printf("enter the indexes (starts from 0) of the first and the second word to swap them:\n");
        scanf("%d%d", &first, &second);
        repl(text, first, second);
    }
}