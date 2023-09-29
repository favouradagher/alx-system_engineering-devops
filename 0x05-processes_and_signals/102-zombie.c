#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

int main(void)
{
    int i;
    pid_t child_pid;

    for (i = 0; i < 5; i++)
    {
        child_pid = fork();

        if (child_pid == -1)
        {
            perror("Error creating child process");
            exit(EXIT_FAILURE);
        }

        if (child_pid == 0)
        {
            // Child process
            printf("Zombie process created, PID: %d\n", getpid());
            exit(0);
        }
    }

    infinite_while(); // Parent process enters an infinite loop

    return (0);
}

