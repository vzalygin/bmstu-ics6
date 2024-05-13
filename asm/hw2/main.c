#include <stdio.h>
#include <string.h>

// Разработать грамматику и распознаватель выражений языка программирования Pascal, оперирующих вещественными числами в формате с фиксированной точкой. Например:
// -34.3456 + 0.56* 0.7989
// * ()
// чбз -- число без знака
// чсз -- число с знаком
// рц -- ряд цифр
// оп -- оператор

// <знак>  ::= -|+
// <цифра> ::= 0|1|2|3|4|5|6|7|8|9
// <оп>   ::= *|/|<знак>

// <число>  ::= <чбз>|<чсз>
// <чсз>    ::= <знак><чбз>
// <чбз>    ::= <рц>.<pц>
// <рц>     ::= <цифра>|<цифра><рц>

// <выр>     ::= <число>|<число><оп><выр_tail>|<число>
// <выр_tail>::= <чбз>|<чбз><оп><выр_tail>|(<выр>)

#define ASSERT_NOT_NULL(x) if (x == NULL) { return NULL; }
#define CHAR(x) (next++, next[-1] == x)
#define APPLY(x) (next = x(next))

// <цифра> ::= 0|1|2|3|4|5|6|7|8|9
char * digit(char * inp) {
    ASSERT_NOT_NULL(inp);
    if (inp[0] >= '0' && inp[0] <= '9') {
        printf("recognised: %.*s\n", 1, inp);
        return ++inp;
    } else {
        return NULL;
    }
}

// <знак>  ::= -|+
char * sign(char * inp) {
    ASSERT_NOT_NULL(inp);
    if (inp[0] == '-' || inp[0] == '+') {
        printf("recognised: %.*s\n", 1, inp);
        return ++inp;
    } else {
        return NULL;
    }
}

// <оп>   ::= *|/|<знак>
char * op(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = inp, ++next, next[-1] == '*') ||
        (next = inp, ++next, next[-1] == '/') || 
        (next = sign(inp))
    ) {
        printf("recognised: %.*s\n", 1, inp);
        return next;
    } else {
        return NULL;
    }
}

// <рц>     ::= <цифра>|<цифра><рц>
char * digit_seq(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = digit_seq(digit(inp))) ||
        (next = digit(inp))
    ) {
        // printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <чбз>    ::= <рц>.<pц>
char * unumber(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = digit_seq(inp)) && 
        (++next, next[-1] == '.') && 
        (next = digit_seq(next))
    ) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <чсз>    ::= <знак><чбз>
char * inumber(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (next = unumber(sign(inp))) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <число>  ::= <чбз>|<чсз>
char * number(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = inumber(inp)) || 
        (next = unumber(inp))
    ) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

char * expr_tail(char * inp);

// <выр>     ::= <число>|<число><оп><выр_tail>
char * expr(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if ((
        (next = number(inp)) &&
        (next = op(next)) &&
        (next = expr_tail(next))
    ) || (
        (next = number(inp))
    )) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <выр_tail>::= <чбз>|<чбз><оп><выр_tail>|(<выр>)
char * expr_tail(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if ((
        (next = unumber(inp)) &&
        (next = op(next)) &&
        (next = expr_tail(next))
    ) || (
        (next = unumber(inp))
    ) || (
        (next = inp, ++next, next[-1] == '(') &&
        (next = expr(next)) &&
        (++next, next[-1] == ')')
    )) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

char * parse(char * inp) {
    return NULL;
}

int main() {
    expr("-34.3456+0.56*0.7989");
    return 0;
}