#include<stdio.h>
#include <time.h>

unsigned long fibon(unsigned long inp){
    if(inp == 0) return 0;
    if(inp == 1) return 1;
    else return fibon(inp - 1) + fibon(inp - 2);
}


int main(void){
    unsigned long var = 0;
    printf("Enter the value: \n");
    scanf("%lu", &var);
    clock_t start = clock(), diff;
    printf("Result: %lu \n", fibon(var));
    diff = clock() - start;

    unsigned long msecs = diff * 1000 / CLOCKS_PER_SEC;
    printf("The fibonacci took this much time: %lu ms \n", msecs);

    return 0;
}