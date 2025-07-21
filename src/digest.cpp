/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *
 */

#include "csync2.hpp"
extern "C" {
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
}
#include "digest.hpp"

int dsync_digest(int file, const char *digest_name, unsigned char *md_value, unsigned int *md_len) {
	EVP_MD_CTX *mdctx;
	const EVP_MD *md;

	OpenSSL_add_all_digests();

	md = EVP_get_digestbyname(digest_name);

	if (!md) {
		csync_error(0, "Unknown message digest {}\n", digest_name);
		return 1;
	}

	mdctx = EVP_MD_CTX_create();
	EVP_DigestInit_ex(mdctx, md, NULL);
	char buffer[4096];
	ssize_t n;
	while ((n = read(file, buffer, 4096)) > 0) {
		EVP_DigestUpdate(mdctx, buffer, n);
	}
	EVP_DigestFinal_ex(mdctx, md_value, md_len);

	EVP_MD_CTX_destroy(mdctx);

	return 0;
}

void dsync_digest_hex(const unsigned char *md_value, unsigned int md_len, char *digest_str) {
	for (unsigned int i = 0; i < md_len; i++) {
		sprintf(digest_str + 2 * i, "%02x", md_value[i]);
	}
}

void dsync_digest_hex(const unsigned char *md_value, unsigned int md_len, std::string& digest) {
	for (unsigned int i = 0; i < md_len; i++) {
		digest += std::format("{:02x}", md_value[i]);
	}
}

void dsync_digest_hex(const std::string &md_value, std::string &digest_str) {
	for (char character : md_value) {
		digest_str += std::format("{:02x}", character);
	}
}

int dsync_digest_path_hex(const std::string& filename, const char *digest_name, std::string& digest_str) {
	int fileno = open(filename.c_str(), O_RDONLY);
	if (fileno < 0) {
		csync_error(0, "ERROR: Failed to open {} for digest:{}", filename, fileno);
		return fileno;
	}
	unsigned char md_value[EVP_MAX_MD_SIZE];
	unsigned int md_len = 0;
	int rc = dsync_digest(fileno, digest_name, md_value, &md_len);
	close(fileno);
	if (rc) {
		csync_error(0, "ERROR: Failed to calc digest for {}: {}", filename, fileno);
		return rc;
	}
	digest_str.reserve(2 * md_len + 1);
	dsync_digest_hex(md_value, md_len, digest_str);
	return 0;
}

#ifdef DIGEST_STANDALONE
int main(int argc, char *argv[])
{
  unsigned char md_value[EVP_MAX_MD_SIZE];
  unsigned int md_len = 0, i;
  if(!argv[1]) {
    printf("Usage: digest digestname filename\n");
    exit(1);
  }

  int file;
  if (argc >= 2 && argv[2]) {
    file = open(argv[2], O_RDONLY);
    if (file == -1)
<<<<<<< HEAD
	{
		printf("Failed to open %s", argv[2]);
	}
	else
		file = STDIN_FILENO;
=======
      printf("Failed to open %s", argv[2]);
  }
  else
    file = STDIN_FILENO;
>>>>>>> 188b170 (C++ version)

  int rc = dsync_digest(file, argv[1], md_value, &md_len);
  if (rc)
    printf("Failed to digest %s with %s", argv[2], argv[1]);
  else {
    //printf("Digest is (%u): ", total);
    char hex_str[2*EVP_MAX_MD_SIZE+1];
    dsync_digest_hex(md_value, md_len, hex_str);
    printf("%s\n", hex_str);
  }
  return 0;
}

#endif
