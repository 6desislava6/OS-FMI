#include <unistd.h>
#include <stdio.h>
#include <err.h>
#include <sys/types.h>
#include <sys/wait.h>

int getKidStatus(char* name)
{
    int status;
    wait(&status);
    printf("Command %s has finished with a status %d\n", name, status);
    return status;
}
void doCommand(char* name, int* count)
{
    pid_t forked = fork();
    if(forked == -1)
        err(1, "%s", "A problem with forking has occurred");

    if(forked > 0)
    {
        if(getKidStatus(name) == 0)
            *count = *(count) + 1;
    }
    else
    {
        int stat = execlp(name, name, 0);
        if (stat == -1)
            err(99, "err execling");
    }
}
int main(int argc, char* argv[])
{
    int count = 0;
    for(int i = 1; i < argc; i++)
        doCommand(argv[i], &count);

    printf("Successfull commands: %d\n", count);
    return 0;
}
