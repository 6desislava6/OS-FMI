#include <unistd.h>
#include <err.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

// TODO за директории!!!
int main(int argc, char* argv[])
{
    char c;
    ssize_t read_size;

    if (argc != 3)
    {
        errx(1, "arguments are not okay");
    }
    int fd1;
    fd1 = open(argv[1], O_RDONLY);
    if (fd1 == -1) {
        err(1, "%s", argv[1]);
    }
    int fd2;

    // truncate, за да са с еднакъв размер!!!

    fd2 = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, S_IRWXU);
    if (fd2 == -1){
        err(1, "Problem with creating a file");
    close(fd1);
    }
    while ((read_size = read(fd1, &c, sizeof(c))) > 0) {
        write(fd2, &c, read_size);
    }
    close(fd1);
    close(fd2);

}
