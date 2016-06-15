#include <unistd.h>
#include <err.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <string.h>


int main(int argc, char* argv[])
{
    if (argc != 2)
    {
        err(1, "Arguments are not ok");
    }
    int status;
    if (fork() > 0)
    {
        wait(&status);
        if (status != 99)
        {
            printf("%s\n", argv[1]);

        } else
        {
            printf("%s\n", "not ok");
        }
    } else
    {
        if ( (execl(strcat("/bin/", argv[1]), argv[1], (char *) NULL)) == -1)
        {
            err(99, "something went wrong");
        }
    }
}
