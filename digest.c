#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include "digest.h"

int dsync_digest(int file, const char *digest_name, unsigned char *md_value, unsigned int *md_len) 
{
  EVP_MD_CTX *mdctx;
  const EVP_MD *md;
  int i; 

  OpenSSL_add_all_digests();

  md = EVP_get_digestbyname(digest_name);
  
  if(!md) {
    printf("Unknown message digest %s\n", digest_name);
    return 1;
  }

  mdctx = EVP_MD_CTX_create();
  EVP_DigestInit_ex(mdctx, md, NULL);
  char buffer[4096];
  ssize_t n;
  ssize_t total = 0;
  while ((n = read(file, buffer, 4096)) > 0) {
    EVP_DigestUpdate(mdctx, buffer, n);
    total += n;
    }
  EVP_DigestFinal_ex(mdctx, md_value, md_len);

  EVP_MD_CTX_destroy(mdctx);

  return 0;
}

void dsync_digest_hex(const unsigned char *md_value, unsigned int md_len, char *digest_str)
{
  for (int i = 0; i < md_len; i++) {
    sprintf(digest_str+2*i, "%02x", md_value[i]);
  }
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
      printf("Failed to open %s", argv[2]);
  }  
  else
    file = STDIN_FILENO;

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
