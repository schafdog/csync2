/*
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005, 2006  Clifford Wolf <clifford@clifford.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "csync2.h"
#include <stdarg.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <netinet/in.h>
#include <netinet/tcp.h>
#include <unistd.h>
#include <netdb.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>


#ifdef HAVE_LIBGNUTLS
#  include <gnutls/gnutls.h>
#  include <gnutls/x509.h>
#endif

#ifdef HAVE_LIBGNUTLS
int csync_conn_usessl = 0;

static gnutls_session_t conn_tls_session;
static gnutls_certificate_credentials_t conn_x509_cred;
#endif

/* getaddrinfo stuff mostly copied from its manpage */
int conn_connect(peername_p peername, int ip_version)
{
	struct addrinfo hints;
	struct addrinfo *result, *rp;
	int sfd, s;
	struct csync_hostinfo *p = csync_hostinfo; 
	char *port = csync_port;
	while (p) {
	    if (!strcmp(peername, p->name)) {
		peername = p->host;
		port = p->port;
		break;
	    }
	    p = p->next;
	}
	csync_log(LOG_DEBUG, 2, "Connecting to %s:%s \n", peername, port);
	/* Obtain address(es) matching host/port */
	memset(&hints, 0, sizeof(struct addrinfo));
	hints.ai_family = ip_version;	/* Allow IPv4 or IPv6 */
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_flags = 0;
	hints.ai_protocol = 0;	/* Any protocol */

	s = getaddrinfo(peername, port, &hints, &result);
	if (s != 0) {
		csync_warn(1, "Cannot resolve peername, getaddrinfo: %s\n", gai_strerror(s));
		return -1;
	}

	/* getaddrinfo() returns a list of address structures.
	   Try each address until we successfully connect(2).
	   If socket(2) (or connect(2)) fails, we (close the socket
	   and) try the next address. */

	for (rp = result; rp != NULL; rp = rp->ai_next) {
		sfd = socket(rp->ai_family, rp->ai_socktype, rp->ai_protocol);
		if (sfd == -1)
			continue;

		if (connect(sfd, rp->ai_addr, rp->ai_addrlen) != -1)
			break;	/* Success */

		close(sfd);
	}
	freeaddrinfo(result);	/* No longer needed */

	if (rp == NULL)	/* No address succeeded */
		return -1;

	return sfd;
}

char *active_peer = 0;

int conn_open(peername_p peername, int ip_version)
{
    int on = 1;
    int conn_fd_in = conn_connect(peername, ip_version);
    if (conn_fd_in < 0) {
	csync_error(1, "Can't create socket.\n");
	return -1;
    }

    if (setsockopt(conn_fd_in, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on) ) < 0) {
	csync_error(1, "conn_open: Can't set TCP_NODELAY option on TCP socket.\n");
	close(conn_fd_in);
	conn_fd_in = -1;
	return -1;
    }

#ifdef HAVE_LIBGNUTLS
    csync_conn_usessl = 0;
#endif
    if (active_peer) { 
	free(active_peer);
	csync_error(0, "Connection not closed on open?");
    }
    active_peer = strdup(peername);
    return conn_fd_in;
}

int conn_set(int infd, int outfd)
{
	int on = 1;

//	conn_fd_in  = infd;
	(void) infd;
//	conn_fd_out = outfd;
#ifdef HAVE_LIBGNUTLS
	csync_conn_usessl = 0;
#endif

	// when running in server mode, this has been done already
	// in csync2.c with more restrictive error handling..
	// FIXME don't even try in "ssh" mode
	if ( setsockopt(outfd, IPPROTO_TCP, TCP_NODELAY, &on, (socklen_t) sizeof(on)) < 0 )
	    csync_error(1, "Can't set TCP_NODELAY option on TCP socket (outfd): %d.\n", outfd);

	return 0;
}


#ifdef HAVE_LIBGNUTLS

static void ssl_log(int prio, const char* msg)
{
    csync_log(prio, 3, "%s", msg);
}

static const char *ssl_keyfile = ETCDIR "/csync2_ssl_key.pem";
static const char *ssl_certfile = ETCDIR "/csync2_ssl_cert.pem";

int conn_activate_ssl(int server_role, int conn_fd_in, int conn_fd_out)
{
	gnutls_alert_description_t alrt;
	int err;

	if (csync_conn_usessl)
		return 0;

	gnutls_global_init();
	gnutls_global_set_log_function(ssl_log);
	gnutls_global_set_log_level(3);

	gnutls_certificate_allocate_credentials(&conn_x509_cred);

	err = gnutls_certificate_set_x509_key_file(conn_x509_cred, ssl_certfile, ssl_keyfile, GNUTLS_X509_FMT_PEM);
	if(err != GNUTLS_E_SUCCESS) {
		gnutls_certificate_free_credentials(conn_x509_cred);
		gnutls_global_deinit();

		csync_fatal(
			"SSL: failed to use key file %s and/or certificate file %s: %s (%s)\n",
			ssl_keyfile,
			ssl_certfile,
			gnutls_strerror(err),
			gnutls_strerror_name(err)
		);
	}

	if(server_role) {
		gnutls_certificate_free_cas(conn_x509_cred);

		if(gnutls_certificate_set_x509_trust_file(conn_x509_cred, ssl_certfile, GNUTLS_X509_FMT_PEM) < 1) {
			gnutls_certificate_free_credentials(conn_x509_cred);
			gnutls_global_deinit();

			csync_fatal(
				"SSL: failed to use certificate file %s as CA.\n",
				ssl_certfile
			);
		}
	} else
		gnutls_certificate_free_ca_names(conn_x509_cred);

	gnutls_init(&conn_tls_session, (server_role ? GNUTLS_SERVER : GNUTLS_CLIENT));
	gnutls_priority_set_direct(conn_tls_session, "PERFORMANCE", NULL);
	gnutls_credentials_set(conn_tls_session, GNUTLS_CRD_CERTIFICATE, conn_x509_cred);

	if(server_role) {
		gnutls_certificate_send_x509_rdn_sequence(conn_tls_session, 0);
		gnutls_certificate_server_set_request(conn_tls_session, GNUTLS_CERT_REQUIRE);
	}

	gnutls_transport_set_ptr2(
		conn_tls_session,
		(gnutls_transport_ptr_t) (size_t) conn_fd_in,
		(gnutls_transport_ptr_t) (size_t) conn_fd_out
	);

	err = gnutls_handshake(conn_tls_session);
	switch(err) {
	case GNUTLS_E_SUCCESS:
		break;

	case GNUTLS_E_WARNING_ALERT_RECEIVED:
		alrt = gnutls_alert_get(conn_tls_session);
		fprintf(
			csync_out_debug,
			"SSL: warning alert received from peer: %d (%s).\n",
			alrt, gnutls_alert_get_name(alrt)
		);
		break;

	case GNUTLS_E_FATAL_ALERT_RECEIVED:
		alrt = gnutls_alert_get(conn_tls_session);
		fprintf(
			csync_out_debug,
			"SSL: fatal alert received from peer: %d (%s).\n",
			alrt, gnutls_alert_get_name(alrt)
		);

	default:
		gnutls_bye(conn_tls_session, GNUTLS_SHUT_RDWR);
		gnutls_deinit(conn_tls_session);
		gnutls_certificate_free_credentials(conn_x509_cred);
		gnutls_global_deinit();

		csync_fatal(
			"SSL: handshake failed: %s (%s)\n",
			gnutls_strerror(err),
			gnutls_strerror_name(err)
		);
	}

	csync_conn_usessl = 1;

	return 0;
}

int conn_check_peer_cert(db_conn_p db, peername_p peername, int callfatal)
{
	const gnutls_datum_t *peercerts;
	unsigned npeercerts;
	int cert_is_ok = -1;

	if (!csync_conn_usessl)
		return 1;

	peercerts = gnutls_certificate_get_peers(conn_tls_session, &npeercerts);
	if(peercerts == NULL || npeercerts == 0) {
		if (callfatal)
			csync_fatal("Peer did not provide an SSL X509 cetrificate.\n");
		csync_error(1, "Peer did not provide an SSL X509 cetrificate.\n");
		return 0;
	}

	{
		char certdata[2*peercerts[0].size + 1];
		size_t size; 
		for (size=0; size < peercerts[0].size; size++)
			sprintf(&certdata[2*size], "%02X", peercerts[0].data[size]);
		certdata[2*size] = 0;

		SQL_BEGIN(db, "Checking peer x509 certificate.",
			"SELECT certdata FROM x509_cert WHERE peername = '%s'",
			url_encode(peername))
		{
			if (!strcmp(SQL_V(0), certdata))
				cert_is_ok = 1;
			else
				cert_is_ok = 0;
		} SQL_END;

		if (cert_is_ok < 0) {
		    csync_log(LOG_DEBUG, 1, "Adding peer x509 certificate to db: %s\n", certdata);
		    SQL(db, "Adding peer x509 sha1 hash to database.",
			"INSERT INTO x509_cert (peername, certdata) VALUES ('%s', '%s')",
			url_encode(peername), url_encode(certdata));
		    return 1;
		}

		csync_info(2, "Peer x509 certificate is: %s\n", certdata);

		if (!cert_is_ok) {
			if (callfatal)
				csync_fatal("Peer did provide a wrong SSL X509 cetrificate.\n");
			csync_error(1, "Peer did provide a wrong SSL X509 cetrificate.\n");
			return 0;
		}
	}

	return 1;
}

#else

int conn_check_peer_cert(db_conn_p db, peername_p peername, int callfatal)
{
	return 1;
}

#endif /* HAVE_LIBGNUTLS */

int conn_close(int conn)
{
#ifdef HAVE_LIBGNUTLS
    if ( csync_conn_usessl ) {
	gnutls_bye(conn_tls_session, GNUTLS_SHUT_RDWR);
	gnutls_deinit(conn_tls_session);
	gnutls_certificate_free_credentials(conn_x509_cred);
	gnutls_global_deinit();
    }
#endif

    if (active_peer) {
	free(active_peer);
	active_peer = NULL;
    }

    close(conn);
    return 0;
}

static inline size_t READ(int filedesc, void *buf, size_t count)
{
#ifdef HAVE_LIBGNUTLS
    if (csync_conn_usessl)
	return gnutls_record_recv(conn_tls_session, buf, count);
#endif
    fd_set set;
    struct timeval timeout;
    /* Initialize the file descriptor set. */
    FD_ZERO (&set);
    FD_SET (filedesc, &set);
    /* Initialize the timeout data structure. */
    timeout.tv_sec = 600;
    timeout.tv_usec = 0;
    int rc = select (FD_SETSIZE, &set, NULL, NULL, &timeout);
    if (rc == 0) {
	
	return -2;
    }
    if (rc < 0) {
	csync_error(0, "Error in READ: %d %s\n", errno, strerror(errno));
	return rc;
    }
    ssize_t length = 0; 
    while (1) {
	length = read(filedesc, buf, count);
	if (length == -1 && errno == EINTR)
	    csync_error(2, "Interupted while reading\n");
	else {
	    if (length < 0)
		csync_error(3, "Error in READ: %d %s\n", errno, strerror(errno));	    
	    return length;
	}
    }
    return length;
}

static inline ssize_t WRITE(int fd, const void *buf, size_t count)
{
    ssize_t n;
    size_t total;
#ifdef HAVE_LIBGNUTLS
    if (csync_conn_usessl)
	return gnutls_record_send(conn_tls_session, buf, count);
    else
#endif
    {
	total = 0;
      
	while (count > total) {
	    n = write(fd, ((char *) buf) + total, count - total);
	    if (n >= 0)
		total += n;
	    else {
		if (errno == EINTR)
		    continue;
		else
		    return -1;
	    }
	}
	return total;
    }
}

ssize_t conn_raw_read(int filedesc, void *buf, size_t count)
{
    return READ(filedesc, buf, count);
}

void conn_debug(const char *name, const char*buf, size_t count)
{
	size_t i;

	if ( csync_level_debug < 3 ) return;

	fprintf(csync_out_debug, "%s> ", name);
	for (i=0; i < count; i++) {
		switch (buf[i]) {
			case '\n':
				fprintf(csync_out_debug, "\\n");
				break;
			case '\r':
				fprintf(csync_out_debug, "\\r");
				break;
			default:
				if (buf[i] < 32 || buf[i] >= 127)
					fprintf(csync_out_debug, "\\%03o", buf[i]);
				else
					fprintf(csync_out_debug, "%c", buf[i]);
				break;
		}
	}
	fprintf(csync_out_debug, "\n");
}

ssize_t conn_read_get_content_length(int fd, long long *size) 
{
   char buffer[200];
   *size = 0;
   int rc = !conn_gets(fd, buffer, 200) || sscanf(buffer, "octet-stream %lld\n", size) != 1;
   csync_log(LOG_DEBUG, 2, "Content length in buffer: '%s' size: %lld rc: %d \n", buffer, *size, rc);
   if (!strcmp(buffer, "ERROR\n")) {
      errno=EIO;
      return -1;
   }
   return rc;
}

#define CHUNK_SIZE 16*1024
int conn_write_chunk(int sockfd, char *buffer, size_t size) {
    char header[16];
    snprintf(header, sizeof(header), "%zx\r\n", size);  // Chunk size in hex
    if (send(sockfd, header, strlen(header), 0) == -1) {
        perror("Error sending chunk header");
        return -1;
    }

    if (send(sockfd, buffer, size, 0) == -1) {
        perror("Error sending chunk");
        return -1;
    }

    if (send(sockfd, "\r\n", 2, 0) == -1) {  // Chunk delimiter
        perror("Error sending chunk delimiter");
        return -1;
    }
    //printf("Chunk %zu sent .\n", size);
    return 0;
}

int conn_read_chunk(int sockfd, char **buffer, size_t *size) {

    char header[16];
    size_t chunk_size;
    // read header
    while (1) {
        ssize_t header_len = recv(sockfd, header, sizeof(header) - 1, MSG_PEEK);
        if (header_len <= 0) {
            perror("Error receiving chunk header");
	    return -1;
        }
        
        char *end_of_header = strstr(header, "\r\n");
        if (!end_of_header) {
	    // try again
	    continue;
	}
        // Only once
        *end_of_header = '\0';  // Null-terminate the header
        sscanf(header, "%zx", &chunk_size);  // Read the chunk size in hexadecimal
        recv(sockfd, header, end_of_header - header + 2, 0);  // Consume the header
        *end_of_header = '\0';
        break;
    }

    *size = chunk_size;
    *buffer = NULL;
    if (chunk_size > 0) {
        size_t bytes_received = 0;
        *buffer = malloc(chunk_size);
        while (bytes_received < chunk_size) {
            ssize_t n = recv(sockfd, *buffer + bytes_received,
                             chunk_size - bytes_received > CHUNK_SIZE ? CHUNK_SIZE : chunk_size - bytes_received, 0);
            if (n <= 0) {
                perror("Error receiving file chunk");
                return -1;
            }
            bytes_received += n;
        }
    }
    // Consume the trailing "\r\n" after each chunk
    char tmp[2]; 
    recv(sockfd, tmp, 2, 0);
    return 0;
}


int conn_write_file_chunked(int sockfd, FILE *file) {
    char buffer[CHUNK_SIZE];
    size_t bytes_read;
    while ((bytes_read = fread(buffer, 1, CHUNK_SIZE, file)) > 0) {
	if (!conn_write_chunk(sockfd, buffer, bytes_read)) {
	    csync_error(0, "Failed to send chunk");
	    return -1;
	}
    }
    // eof chunk
    conn_write_chunk(sockfd, "", 0);    
    fclose(file);
    printf("File sent using chunked encoding.\n");
    return 0;
}

int conn_read_file_chunked(int sockfd, FILE *file) {
    while (1) {
	char *buffer;
	size_t n_bytes;
	if (!conn_read_chunk(sockfd, &buffer, &n_bytes)) {
	    csync_error(0, "Failed to read chunk\n");
	    return -1;
	}
	if (n_bytes > 0) {
	    fwrite(buffer, n_bytes, 1, file);
	    free(buffer);
	    break;
	}
    }
    fclose(file);
    printf("File received using chunked encoding.\n");
    return 0;
}

/* Rewritten not to mask errors */ 
ssize_t conn_read(int fd, void *buf, size_t count)
{
    size_t pos;
    ssize_t rc;
    for (pos=0; pos < count ; pos+=rc) {
	rc = conn_raw_read(fd, (char *)buf+pos, count-pos);
	if (rc < 0)
	    return rc;
	/* End of file */
	if (rc == 0)
	    break;
    }
    //	conn_debug(active_peer, buf, pos);
    return pos;
}

ssize_t conn_write(int fd, const void *buf, size_t count)
{
    // conn_debug("Local", buf, count);
    return WRITE(fd, buf, count);
}

void  conn_remove_key(char *buf) {
    if (!strncmp(buf, "HELLO", 5) ||
	!strncmp(buf, "CONFIG",6) || 
	!strncmp(buf, "BYE", 3)   ||
//	!strncmp(buf, "DEL", 3)   ||
	!strncmp(buf, "LIST", 4))
	return ;
    char *ptr = buf;
    while (*ptr != 0 && *ptr != ' ')
	ptr++;
    if (*ptr == 0) 
	return ;

    char *after = ++ptr;
    // key start
    while (*(after) != 0 && *after != ' ')
	after++; 
    if (*after == 0)
	return; 
    after++;
    // Field after key start
    while (*after != 0) 
	*(ptr++) = *(after++);
    *ptr = *after;
    /*
      Will remove last word if not ending with a space
      Good for removing time for log compare. Should be configurable though
    */
    while (*(--ptr) != ' ') { //  || (*ptr >= '0' && *ptr <= '9')) {
	*ptr = 0;
    }
}

char *filter_mtime(char *buffer, int make_copy) {
    char *str = buffer;
    if (make_copy)
	str = strdup(buffer);
    if (csync_level_debug == 2) {
	char *pos = strstr(str, "mtime=");
	if (pos != NULL) {
	    pos += 6;
	    while (*pos != '\0' && *pos != '%') {
		*pos = 'x';
		pos++;
	    }
	}
    }
    return str;
}

void conn_printf(int fd, const char *fmt, ...)
{
    char dummy = 0, *buffer = 0;
    va_list ap;
    int size;

    va_start(ap, fmt);
    size = vsnprintf(&dummy, 1, fmt, ap);
    buffer = alloca(size+1);
    va_end(ap);
    
    va_start(ap, fmt);
    vsnprintf(buffer, size+1, fmt, ap);
    va_end(ap);
    
    buffer[size] = 0;
    conn_write(fd, buffer, size);
    conn_remove_key(buffer);
    char *str = filter_mtime(buffer, 0);
    csync_info(2, "CONN %s < %s\n", active_peer, str);
}

void conn_printf_cmd_filepath(int fd, const char *cmd, const char *file, const char *key_enc, const char *fmt, ...)
{
    char dummy = 0, *buffer = 0;
    va_list ap;
    int size;
    csync_debug(2, "conn_printf_cmd_filepath: unused parameters cmd %s file %s key_enc %s", cmd, file, key_enc);
    va_start(ap, fmt);
    size = vsnprintf(&dummy, 1, fmt, ap);
    buffer = alloca(size+1);
    va_end(ap);
    
    va_start(ap, fmt);
    vsnprintf(buffer, size+1, fmt, ap);
    va_end(ap);
    
    buffer[size] = 0;
    conn_write(fd, buffer, size);
    conn_remove_key(buffer);
    csync_info(2, "CONN %s < %s\n", active_peer, buffer);
}

ssize_t gets_newline(int filedesc, char *s, size_t size, int remove_newline)
{
    size_t i=0;
    int rc = 0;
    while (i<size-1) {
	rc = conn_raw_read(filedesc, s+i, 1);
	if (rc != 1) 
	    break;
	if (s[i++] == '\n') {
	    if (remove_newline)
		i--;
	    break;
	}
    }
    s[i] = 0;
    return rc ? rc : i;
}

ssize_t conn_gets_newline(int filedesc, char *s, size_t size, int remove_newline)
{
    int rc = gets_newline(filedesc, s, size, remove_newline);
    if (rc == -1) {
	csync_error(0, "CONN %s > %s failed with error '%s' \n", active_peer, s, strerror(errno));
	return rc; 
    }
    // Filter mtime but on a copy.
    char *copy = filter_mtime(s, 1);
    csync_info(2, "CONN %s > '%s'\n", active_peer, copy);
    free(copy);
    return rc;
}


size_t conn_gets(int conn_in, char *s, size_t size) {
    return conn_gets_newline(conn_in, s, size, 1);
}

