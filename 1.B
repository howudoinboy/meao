#include <stdio.h>
#include <math.h>

int digitPosition(int N);

int main()
{
    int a, n;
    printf("Enter two positive integers: ");
    scanf("%d",&n);
    a=digitPosition(n);
    printf("The digit position  of 2nd is %d\n",a);
}
int digitPosition(int N){
    int i, j=0;
    int pow=1;
    int p=2;
    int tmp=N;
    while(tmp>10)
    {
        pow*=10;
        tmp/=10;
    }
    tmp=N;
    for(i=1; i<=p;i++){
       j = tmp/pow;
       tmp%=pow;
       pow/=10;
    }

    return j;
}
