#include <stdio.h>

int main()
{
   int data1 = 10;
   int result = 20;

   asm ("add %1, %0"
        : "=d"(result)
        : "c"(data1), "0"(result)
        : "%ecx", "%edx");

   printf("The result is %d\n", result);
   return 0;
}
