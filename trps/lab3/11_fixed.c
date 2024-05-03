#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>
#include <time.h>

int main(int argc, char **argv) {
    int count;
    if (argc == 1) {

    } else {
        count = 1;
    }
    clock_t start = clock();
    for (int __ = 0; __ < count; __++) {
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
    }
    clock_t end = clock();
    double time = (double)(end - start)/COUNT;
    printf("c оптимизациями\tвремя работы: %fms\n", time);
    return 0;
}
