/* -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */
#ifndef DIGEST_H
#define DIGEST_H

/* #if __DARWIN_C_LEVEL
#include <CommonCrypto/CommonDigest.h>
##define DIGEST_MAX_SIZE 64
#else
*/
// Disable warnings for C headers
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wold-style-cast"
#pragma GCC diagnostic ignored "-Wcast-qual"
extern "C" {
#include <openssl/evp.h>
}
#pragma GCC diagnostic pop
#define DIGEST_MAX_SIZE EVP_MAX_MD_SIZE
// #endif

int dsync_digest(int file, const char *digest_name, unsigned char *md_value, unsigned int *md_len);
void dsync_digest_hex(const unsigned char *md_value, unsigned int md_len, char *digest_str);
int dsync_digest_path_hex(const char *filename, const char *digest_name, char *digest_str, unsigned int size);
int dsync_digest_path_hex(filename_p filename, const char *digest_name, char *digest_str, unsigned int size);
#endif
