/*
A number, which when converted to its binary equivalent, has two or more consecutive 1s is called a special bit number.
The program accepts an integer array of size n, along with certain Q queries (Left and Right). It prints the number of special bit numbers occuring within the specified range for each query.
*/
 
#include<stdio.h>
int convtobin(int A)
{
   // printf("Converting A=%d to binary::", A);
    int bin=0, rem, base=1;
    while(A>0)
    {
        rem = A%2;
        bin = bin + rem*base;
        A=A/2;
        base=base*10;
    }
    //printf("It is %d\n", bin);
    return bin;
}
int check(int bin)
{
    int f=0, a, b;
    if (bin==0)
        return f;
    while(bin>10)
    {
        a=bin%10;
        b=(bin/10)%100;
        if(a==1 && b==1)
        {
            f=1;
            return f;
        }
       bin=bin/10;
    }
    return f;
}
int main()
{
    int N, Q, i, j, b, c, count;
    int A[100000], B[100000];
    int L[100000], R[100000];
    scanf("%d %d", &N, &Q);
    for(i=1;i<=N; i++)
    {
        scanf("%d", &A[i]);
        b = convtobin(A[i]);
        B[i] = check(b);
    }
    for(i=1;i<=Q;i++)
    {
        scanf("%d", &L[i]);
        scanf("%d", &R[i]);
        
    }
    for(i=1;i<=Q;i++)
    { count = 0;
        for(j=L[i];j<=R[i];j++)
        {
            count = count + B[j];
            /*
            b = convtobin(A[j]);
            //printf("Check if %d is special.", b);
            c = check(b);
            if (c==1)
            {
                //printf("It is");
                count++;
            }
            */
        }
        printf("%d \n", count);
    }
    
}