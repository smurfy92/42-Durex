# include <stdio.h>
# include <string.h>
# include <sys/types.h>
# include <sys/stat.h>
# include <sys/file.h>
# include <fcntl.h>
# include <sys/wait.h>
# include <unistd.h>
# include <sys/socket.h>
# include <netdb.h>
# include <stdio.h>
# include <arpa/inet.h>
#define BUFFER 1024

typedef struct		s_mem
{
	char			*data;
	int			len;
}				t_mem;

typedef struct			s_daemon
{
	int			lock_file;
	int			sock;
}			t_daemon;

void		ft_exit(t_daemon *daemon, int status);