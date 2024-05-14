#include <stdio.h>
#include <string.h>

// Разработать грамматику и распознаватель выражений языка программирования Pascal, оперирующих вещественными числами в формате с фиксированной точкой. Например:
// -34.3456 + 0.56* 0.7989

#define ASSERT_NOT_NULL(x) if (x == NULL) { return NULL; }
#define TRUE 1
#define FALSE 0

// <цифра> ::= 0|1|2|3|4|5|6|7|8|9
char * digit(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    if (inp[0] >= '0' && inp[0] <= '9') {
        return ++inp;
    } else {
        return NULL;
    }
}

// <знак>  ::= -|+
char * sign(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    if (inp[0] == '-' || inp[0] == '+') {
        if (print) {
            printf("Распознан знак: %.*s\n", 1, inp);
        }
        return ++inp;
    } else {
        if (print) {
            printf("Ошибка знака: %.*s\n", 1, inp);
        }
        return NULL;
    }
}

// <оп>   ::= *|/|<знак>
char * op(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = inp, ++next, next[-1] == '*') ||
        (next = inp, ++next, next[-1] == '/') || 
        (next = sign(inp, FALSE))
    ) {
        if (print) {
            printf("Распознана операция: %.*s\n", 1, inp);
        }
        return next;
    } else {
        if (print) {
            printf("Ошибка операции: %.*s\n", 1, inp);
        }
        return NULL;
    }
}

// <рц>     ::= <цифра>|<цифра><рц>
char * digit_seq(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = digit_seq(digit(inp, FALSE), FALSE)) ||
        (next = digit(inp, FALSE))
    ) {
        return next;
    } else {
        return NULL;
    }
}

// <чбз>    ::= <рц>.<pц>
char * unumber(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next = inp;
    if (
        (next = digit_seq(inp, FALSE)) && 
        (++next, next[-1] == '.') && 
        (next = digit_seq(next, FALSE))
    ) {
        if (print) {
            printf("Распознано число без знака: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        }
        return next;
    } else {
        if (print) {
            printf("Ошибка числа без: %.*s\n", strlen(inp), inp);
        }
        return NULL;
    }
}

// <чсз>    ::= <знак><чбз>
char * inumber(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (next = unumber(sign(inp, print), print)) {
        return next;
    } else {
        return NULL;
    }
}

// <число>  ::= <чбз>|<чсз>
char * number(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = inumber(inp, print)) || 
        (next = unumber(inp, print))
    ) {
        return next;
    } else {
        return NULL;
    }
}

char * expr_tail(char * inp, int print);

// <выр>     ::= <выр_tail>|<число><оп><выр_tail>|<число>
char * expr(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if ((
        (next = expr_tail(inp, print))
    ) || (
        (next = number(inp, print)) &&
        (next = op(next, print)) &&
        (next = expr_tail(next, print))
    ) || (
        (next = number(inp, print))
    )) {
        return next;
    } else {
        return NULL;
    }
}

// <выр_tail>::= (<выр>)<оп><выр_tail>|(<выр>)|<чбз><оп><выр_tail>|<чбз>
char * expr_tail(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if ((
        (next = inp, ++next, next[-1] == '(') &&
        (next = expr(next, print)) &&
        (++next, next[-1] == ')') &&
        (next = op(next, print)) &&
        (next = expr_tail(next, print))
    ) || (
        (next = inp, ++next, next[-1] == '(') &&
        (next = expr(next, FALSE)) &&
        (++next, next[-1] == ')')
    ) || (
        (next = unumber(inp, print)) &&
        (next = op(next, print)) &&
        (next = expr_tail(next, print))
    ) || (
        (next = unumber(inp, FALSE))
    )) {
        // printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

char * parse(char * inp, int print) {
    ASSERT_NOT_NULL(inp);
    char * next = expr(inp, print);
    if (next != NULL && strlen(next) == 0) {
        printf("Распознано: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        printf("Конструкция распознана.\n");
    } else {
        printf("Обнаружена ошибка.\n");
    }
    return next;
}

void rem(char* s, char c) {
    for (int i = 0; i < strlen(s); i++)
        if (s[i] == '\n') {
            s[i] = '\0';
            break;
        }
    int j, n = strlen(s);
    for (int i = j = 0; i < n; i++)
        if (s[i] != c)
            s[j++] = s[i];
 
    s[j] = '\0';
}

int main() {
    char inp[100];
    while(1) {
        printf("Введите строку (end для выхода):\n");
        gets(inp);
        if (inp[0] == 'e' && inp[1] == 'n' && inp[2] == 'd') {
            return 0;
        }
        rem(inp, ' ');
        parse(inp, TRUE);
    }
    // parse("a\0", TRUE);
    return 0;
}
