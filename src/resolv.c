#include <sys/types.h>
#include <sys/socket.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <netinet/in.h>
#include <arpa/inet.h>

#define BUF_SIZE 500

typedef union address {
    struct sockaddr sa;
    struct sockaddr_in sa_in;
    struct sockaddr_in6 sa_in6;
    struct sockaddr_storage ss;
} address_t;


const char *csync_inet_ntop(address_t *addr, char *buf, size_t size)
{
    sa_family_t af = addr->sa.sa_family;
    return inet_ntop(af,
		     af == AF_INET  ? (void*)&addr->sa_in.sin_addr :
		     af == AF_INET6 ? (void*)&addr->sa_in6.sin6_addr : NULL,
		     buf, size);
}

int
main(int argc, char *argv[])
{
    struct addrinfo hints;
    struct addrinfo *result, *rp;
    int sfd, s, j;
    size_t len;
    ssize_t nread;
    char buf[BUF_SIZE];

    if (argc < 1) {
	fprintf(stderr, "Usage: %s host ...\n", argv[0]);
	exit(EXIT_FAILURE);
    }

    /* Obtain address(es) matching host/port */

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_family = AF_UNSPEC;    /* Allow IPv4 or IPv6 */
    hints.ai_socktype = SOCK_DGRAM; /* Datagram socket */
    hints.ai_flags = 0;
    hints.ai_protocol = 0;          /* Any protocol */

    s = getaddrinfo(argv[1], argv[2], &hints, &result);
    if (s != 0) {
	fprintf(stderr, "getaddrinfo: %s\n", gai_strerror(s));
	exit(EXIT_FAILURE);
    }

    /* getaddrinfo() returns a list of address structures.
       Try each address until we successfully connect(2).
       If socket(2) (or connect(2)) fails, we (close the socket
       and) try the next address. */

    char ip_string[INET6_ADDRSTRLEN];
    for (rp = result; rp != NULL; rp = rp->ai_next) {
	printf("IP: %s\n", csync_inet_ntop((address_t *) rp->ai_addr, ip_string, sizeof(ip_string)));
	  
    }
}

