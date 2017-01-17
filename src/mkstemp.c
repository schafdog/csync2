
#include <stdlib.h>
#include <stdio.h>

#if defined(MKTEMP_STANDALONE)
int main(int argc, char *argv[]) 
{
   
   int rc = mkstemp(argv[1]);
   printf("'%s' rc: %d\n" ,argv[1], rc); 
   return rc;
}
#endif
