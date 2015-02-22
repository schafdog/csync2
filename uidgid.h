
#ifndef UIDGID_H
#define UIDGID_H

uid_t name_to_uid(char const *name, gid_t *gid);
int uid_to_name(uid_t uid, char *buffer, int length, const char *default_value);
int gid_to_name(gid_t gid, char *buffer, int length, const char *default_value);
uid_t name_to_gid(char const *name);

#endif 
