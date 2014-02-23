#ifndef DIGEST_H
#define DIGEST_H

#include <openssl/evp.h>

int dsync_digest(int file, const char *digest_name, unsigned char *md_value, unsigned int *md_len);
//int dsync_digest_file(const char *filename, const char *digest_name, unsigned char *result, unsigned int *len);
void dsync_digest_hex(const unsigned char *md_value, unsigned int md_len, char *digest_str);

#endif
