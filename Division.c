#include <stdio.h>

int main(void){
    int x, y;

    printf("飴の個数を入力：");
    scanf("%d", &x);

    printf("人数を入力: ");
    scanf("%d", &y);

    int mul = x / y;
    int amari = x % y;

    printf("%d個の飴を%d人で分けると、一人あたり%d個で、%d個余ります\n", x,y,mul, amari);

    return 0;
}
