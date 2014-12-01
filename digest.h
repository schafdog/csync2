#ifndef DIGEST_H
#define DIGEST_H

/* #if __DARWIN_C_LEVEL
#include <CommonCrypto/CommonDigest.h>
##define DIGEST_MAX_SIZE 64
#else
*/
#include <openssl/evp.h>
#define DIGEST_MAX_SIZE EVP_MAX_MD_SIZE
// #endif

int dsync_digest(int file, const char *digest_name, unsigned char *md_value, unsigned int *md_len);
void dsync_digest_hex(const unsigned char *md_value, unsigned int md_len, char *digest_str);
int dsync_digest_path_hex(const char *filename, const char *digest_name, char *digest_str, int size);
#endif
