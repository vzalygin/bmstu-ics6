#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>
#include <time.h>

#include "macros.h"

int main(int argc, char **argv) {
    START_MEASURE("после оптимизаций\t")

    double s,m,eps,cur,prev;
    double *ms, *mss;
    int N = 1000, i,o; 
    eps = 0.00001;
    prev = 1.0/4;
    o = 1;
    s = prev;
    do {
        o++;
        m = -1/(4*o);
        cur = prev*m;
        s = s+cur;
        prev = cur;
    } while (abs(prev-cur)>=eps);
    printf("s = %f\nn = %d\n",s,o);
    
    END_MEASURE()
    return 0;
}
