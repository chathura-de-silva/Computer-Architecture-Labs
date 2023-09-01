#include <stdio.h>
int factorial(int n);

int main(){
    int n =7;
    printf("%d",factorial(n));
    return 0;
}

int factorial(int n){
    int i, fact = 1;
    for(i = 1; i <= n; i++){
        fact *= i;
    }
    return fact;
}