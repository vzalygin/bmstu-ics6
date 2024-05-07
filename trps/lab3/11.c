#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>
#include <time.h>

#include "macros.h"

int main(int argc, char **argv) {
    double s,a,m,eps,x;
    double *ms, *mss;
    int N, i,o;

    START_MEASURE("до оптимизаций\t\t")

    N = 1000;
    ms = (double*)malloc(N * sizeof(int));
    mss = (double*)malloc(N * sizeof(int));
    eps = 0.00001;
    ms[1] = 1.0/4;
    o = 1;
    s = 1.0/4;
    mss[1] = s;
    do {
        o++;
        m = -1/(4*o);
        ms[o] = ms[o-1]*m;
        s = s+ms[o];
        mss[o] = s;
    } while (abs(ms[o-1]-ms[o])>=eps);
    
    END_MEASURE()   

    printf("s = %f\nn = %d\n",s,o);
    return 0;
}
