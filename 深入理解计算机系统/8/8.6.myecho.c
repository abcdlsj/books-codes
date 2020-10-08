#include <stdio.h>
#include <stdlib.h>
/*
 * 编写一个叫做 myecho 的程序，打印出它的命令行参数和环境变量。
 */

extern char **environ;

int main(char argc, char *argv[])
{
    char **ep, **ar;
    int i = 0;
    printf("Command-ine arguments:\n");
    for (ar = argv; *ar; ar++, i++)
    {
        printf("\targv[%2d]: %s\n", i, *ar);
    }
    i = 0;
    printf("Environment variable\n");
    for (ep = environ; *ep; ep++, i++)
    {
        printf("\tenvp[%2d]: %s\n", i, *ep);
    }
    exit(EXIT_SUCCESS);
}