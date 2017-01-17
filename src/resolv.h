
#ifndef RESOLV_H
#define RESOLV_H

#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>

typedef union address {
	struct sockaddr sa;
	struct sockaddr_in sa_in;
	struct sockaddr_in6 sa_in6;
	struct sockaddr_storage ss;
} address_t;

const char *csync_inet_ntop(address_t *addr, char *buf, size_t size);

#endif 
