#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <malloc.h>
#include <math.h>
#include <time.h>

#define START_MEASURE(name) int count; \
    char * __NAME = name; \
    if (argc == 2) {count = atoi(argv[1]);} else {count = 1;} \
    clock_t start = clock(); \
    for (int __ = 0; __ < count; __++) {

#define END_MEASURE() } \
    clock_t end = clock(); \
    double time = (double)(end - start)/count; \
    if (argc == 2) {printf("%sвремя работы: %.3fms\n", __NAME, time);}
