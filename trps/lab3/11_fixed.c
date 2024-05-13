#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>
#include <time.h>

#include "macros.h"

int main(int argc, char **argv) {
    double s,m,eps,cur,prev;
    int N,i,o;
    
    START_MEASURE("после оптимизаций\t")

    N = 1000;
    eps = 0.00001;
    cur = 1.0/4;
    o = 1;
    s = cur;
    do {
        prev = cur;
        o++;
        m = -1.0/(4*o);
        cur = prev*m;
        s = s+cur;
    } while (fabs(prev-cur)>=eps);
    
    END_MEASURE()

    printf("s = %f\nn = %d\n",s,o);
    return 0;
}
