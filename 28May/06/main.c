//Реализирайте команда cat, работеща с произволен брой подадени входни параметри.
#include <stdio.h>
#include <fcntl.h>
// тази е за ssize_t
#include <sys/types.h>
// тази е за read
#include <unistd.h>
#include <err.h>

int main(int argc, char* argv[])
{
    int fd;
    ssize_t read_size;
    char c[1<<11];

    for (int i = 1; i < argc; i++)
    {
        if ((fd = open(argv[1], O_RDONLY)) == -1)
        {
            err(1, "%s", argv[i]);
        }

        while((read_size = read(fd, &c, sizeof(c))) > 0)
        {
            if(write(1, &c, read_size) != read_size)
            {
                err(1, "%s", "went wrooong");
            }
        }
        close(fd);
    }
}
