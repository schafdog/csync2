/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 */
#define _POSIX_SOURCE
#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <pwd.h>
#include <grp.h>
#include <unistd.h>
#include <string.h>
#include "uidgid.hpp"

/* Missing on DARWIN */
#ifndef _SC_GETPW_R_SIZE_MAX
#define _SC_GETPW_R_SIZE_MAX -1
#endif

#ifndef _SC_GETGR_R_SIZE_MAX
#define _SC_GETGR_R_SIZE_MAX -1
#endif

uid_t name_to_uid(char const *name, gid_t *gid) {
	if (!name)
		return -1;
	long buflen = static_cast<long>(sysconf(_SC_GETPW_R_SIZE_MAX));
	if (buflen == -1)
		// HACK on OS X
		buflen = 10000;

	// requires c99
	char *buf = static_cast<char*>(malloc(buflen));
	struct passwd pwbuf, *pwbufp;
	if (0 != getpwnam_r(name, &pwbuf, buf, buflen, &pwbufp) || !pwbufp) {
		free(buf);
		return -1;
	}
	if (gid != NULL)
		*gid = pwbufp->pw_gid;
	uid_t result = pwbufp->pw_uid;
	free(buf);
	return result;

}

int uid_to_name(uid_t uid, char *buffer, int length, const char *default_value) {
	long buflen = sysconf(_SC_GETPW_R_SIZE_MAX);
	if (buflen == -1)
		buflen = 100000;
	//    return NULL;
	// requires c99
	char *buf = static_cast<char*>(malloc(buflen));
	struct passwd pwbuf, *pwbufp;
	if (0 != getpwuid_r(uid, &pwbuf, buf, buflen, &pwbufp) || !pwbufp) {
		if (default_value)
			strncpy(buffer, default_value, length);
		free(buf);
		return -1;
	};
	strncpy(buffer, pwbufp->pw_name, length);
	free(buf);
	return 0;

}

int gid_to_name(gid_t gid, char *buffer, int length, const char *default_value) {
	long buflen = sysconf(_SC_GETGR_R_SIZE_MAX);
	if (buflen == -1)
		buflen = 100000;
	//return NULL;
	// requires c99
	char *buf = static_cast<char*>(malloc(buflen));
	struct group grpbuf, *grpbufp;
	if (0 != getgrgid_r(gid, &grpbuf, buf, buflen, &grpbufp) || !grpbufp) {
		if (default_value)
			strncpy(buffer, default_value, length);
		free(buf);
		return -1;
	};
	strncpy(buffer, grpbufp->gr_name, length);
	free(buf);
	return 0;
}

uid_t name_to_gid(char const *name) {
	if (!name)
		return -1;
	long buflen = sysconf(_SC_GETGR_R_SIZE_MAX);
	if (buflen == -1)
		buflen = 10000;
	// return -1;
	// requires c99
	char *buf = static_cast<char*>(malloc(buflen));
	struct group grbuf, *grbufp;
	if (0 != getgrnam_r(name, &grbuf, buf, buflen, &grbufp) || !grbufp) {
		free(buf);
		return -1;
	}

	gid_t result = grbufp->gr_gid;
	free(buf);
	return result;

}

#if defined(STANDALONE)

int main(int argc, char **argv)
{
  gid_t gid; 
  uid_t uid = name_to_uid(argv[1], &gid);
  char buffer[100];
  char *ptr = uid_to_name(uid, buffer, 100);
  if (ptr == NULL)
    ptr = "<error>";
  printf("USER: %i %s\n", uid, ptr);

  gid_t newgid;
  ptr = gid_to_name(gid, buffer, 100);
  if (ptr == NULL)
    ptr = "<error>";
  else 
    newgid = name_to_gid(ptr); 
  printf("GROUP: %i %s %i\n", gid, ptr, newgid);
  return 0;
}
#endif
