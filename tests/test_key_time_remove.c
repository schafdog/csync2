
//#define ETCDIR "."
#include "csync2.h" 

//char *myhostname = "dummy";
void conn_remove_key(char *buffer);

int main(int argc, char *argv[]) {
    
    const char *testSIG = "SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 1415790417";
    char *buffer = strdup(testSIG);
    conn_remove_key(buffer);
    printf("'%s'\n", buffer);
    return 0;
};
