#include <unistd.h>
#include <err.h>
#include <stdio.h>
int main()
{
    int pipefd[2];
    char buffer[1 << 12];
    ssize_t read_size;


    if(pipe(pipefd) == -1)
    {
        err(1, "the pipe is not ok");
    }
    int forked = fork();
    if(forked == -1)
    {
        err(2, "fork is bad");
    }
    if(forked > 0)
    {
        //father
        close(pipefd[0]);
        write(pipefd[1], "blabla\n", 7);
        close(pipefd[1]);
    } else
    {
        //child

        close(pipefd[1]);
        printf("%s\n", "I am a child");
        while((read_size = read(pipefd[0], &buffer, sizeof(buffer))) > 0)
        {
            if((write(1, &buffer, read_size)) != read_size)
            {
                err(1, "cant write");
            }
            //printf("%s\n", &buffer);
        }
        close(pipefd[0]);
    }
}
