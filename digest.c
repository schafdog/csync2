#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdio.h>
#include <openssl/evp.h>

main(int argc, char *argv[])
{
  EVP_MD_CTX *mdctx;
  const EVP_MD *md;
  unsigned char md_value[EVP_MAX_MD_SIZE];
  int md_len, i;

  OpenSSL_add_all_digests();

  if(!argv[1]) {
    printf("Usage: digest digestname filename\n");
    exit(1);
  }

  md = EVP_get_digestbyname(argv[1]);
  
  if(!md) {
    printf("Unknown message digest %s\n", argv[1]);
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


  mdctx = EVP_MD_CTX_create();
  EVP_DigestInit_ex(mdctx, md, NULL);
  char buffer[4096];
  ssize_t n;
  ssize_t total = 0;
  while ((n = read(file, buffer, 4096)) > 0) {
    EVP_DigestUpdate(mdctx, buffer, n);
    total += n;
    }
  EVP_DigestFinal_ex(mdctx, md_value, &md_len);
  EVP_MD_CTX_destroy(mdctx);

  printf("Digest is (%u): ", total);
  for(i = 0; i < md_len; i++) 
    printf("%02x", md_value[i]);
  printf("\n");
}
