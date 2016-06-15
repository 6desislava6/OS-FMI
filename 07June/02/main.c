#include <unistd.h>
#include <err.h>
#include <stdio.h>
#include <stdlib.h>
int main()
{
    int pipefd[2];
    int child;
    if(pipe(pipefd) == -1)
        err(2, "the pipe is not ok");
    int forked = fork();

    if (forked == -1)
        err(1, "fork gone wrong");

    if (forked == 0)
    {
        //child
        close(pipefd[1]);
        dup2(pipefd[0], 0);
        if ((execlp("sort", "sort", 0)) == -1)
            err(3, "sort");

    } else {
        // parent
        close(pipefd[0]);
        write(pipefd[1], "blabla\n", 7);
        write(pipefd[1], "blabla2\n", 8);
        write(pipefd[1], "blabla1\n", 8);
        close(pipefd[1]);
        wait(&child);
    }
    exit(0);
}
