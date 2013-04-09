
#ifndef UIDGID_H
#define UIDGID_H

uid_t name_to_uid(char const *name, gid_t *gid);
char *uid_to_name(uid_t uid, char *buffer, int length);
char *gid_to_name(gid_t gid, char *buffer, int length);
uid_t name_to_gid(char const *name);

#endif 
