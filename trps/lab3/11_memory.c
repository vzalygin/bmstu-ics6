#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>
#include <time.h>

#define COUNT 1000000

int main()
{
    clock_t start = clock();
    for (int __ = 0; __ < COUNT; __++) {
        double s,a,m,eps,x;
        double ms, mss;
        int N = 1000, i,o; 
        ms = 1.0/4;
        mss = 0.0;
        eps = 0.00001;
        o = 1;
        s = 1.0/4;
        do {
            o++;
            m = -1/(4*o);
            mss = ms*m;
            s = s+mss;
            ms = mss;
        } while (abs(ms-mss)>=eps);
        printf("s = %f\nn = %d\n",s,o);
    }
    clock_t end = clock();
    double time = (double)(end - start)/COUNT;
    printf("оптимизация памяти. время работы: %fms\n", time);
    return 0;
}
