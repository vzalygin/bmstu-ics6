#include <stdio.h>
#include <string.h>

// Разработать грамматику и распознаватель выражений языка программирования Pascal, оперирующих вещественными числами в формате с фиксированной точкой. Например:
// -34.3456 + 0.56* 0.7989

// чбз -- число без знака
// чсз -- число с знаком
// рц -- ряд цифр
// опр -- оператор

// <знак>  ::= -|+
// <цифра> ::= 0|1|2|3|4|5|6|7|8|9
// <опр>   ::= *|/

// <число>  ::= <чбз>|<чсз>
// <чсз>    ::= <знак><чбз>
// <чбз>    ::= <рц>.<pц>
// <рц>     ::= <цифра>|<цифра><рц>

// <сум>    ::= <число>|<число><сумк>
// <сумк>   ::= <чсз>|<чсз><сумк>
// <множ>   ::= <чбз>|(<сум>)
// <прз>    ::= <множ>|<множ><опр><прз>

#define ASSERT_NOT_NULL(x) if (x == NULL) { return NULL; }
#define CHAR(x) (next++, next[-1] == x)
#define APPLY(x) (next = x(next))

typedef char * (* parser)(char *);

// <цифра> ::= 0|1|2|3|4|5|6|7|8|9
char * digit(char * inp) {
    return inp[0] >= '0' && inp[0] <= '9' ? ++inp : NULL;
}

// <знак>  ::= -|+
char * sign(char * inp) {
    if (inp[0] == '-' || inp[0] == '+') {
        printf("recognised: %.*s\n", 1, inp);
        return ++inp;
    } else {
        return NULL;
    }
}

// <опр>   ::= *|/
char * op(char * inp) {
    if (inp[0] == '*' || inp[0] == '/') {
        printf("recognised: %.*s\n", 1, inp);
        return ++inp;
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
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <чбз>    ::= <рц>.<pц>
char * ufloat(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next = inp;
    if (
        (next = digit_seq(next)) && 
        (CHAR('.')) && 
        (next = digit_seq(next))
    ) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <чсз>    ::= <знак><чбз>
char * ifloat(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (next = ufloat(sign(inp))) {
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
        (next = ifloat(inp)) || 
        (next = ufloat(inp))
    ) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <сумк>   ::= <чсз>|<чсз><сумк>
char * sum_tail(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = sum_tail(ifloat(inp))) || 
        (next = ifloat(inp))
    ) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <сум>    ::= <число>|<число><сумк>
char * sum(char * inp) {
    ASSERT_NOT_NULL(inp);
    char * next;
    if (
        (next = sum_tail(number(inp))) ||
        (next = number(inp))
    ) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <множ>   ::= <чбз>|(<сум>)
char * multiplier(char * inp) {
    char * next = inp;
    if ((
        (next = inp) &&
        (next = ufloat(next))
    ) || (
        (next = inp) &&
        (CHAR('(')) &&
        (next = sum(next)) &&
        (CHAR(')'))
    )) {
        printf("recognised: %.*s\n", (int)(strlen(inp)-strlen(next)), inp);
        return next;
    } else {
        return NULL;
    }
}

// <прз>    ::= <множ>|<множ><опр><прз>|<сум>
char * expression(char * inp) {
    char * next = inp;
    if ((
        (next = inp) &&
        (next = multiplier(next)) &&
        (next = op(next)) &&
        (next = expression(next))
    ) || (
        (next = inp) &&
        (next = multiplier(next))
    ) || (
        (next = inp) &&
        (next = sum(next))
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
    expression("-123412.0+1.0*2.1");
    return 0;
}