#ifndef BUFFER_H
#define BUFFER_H

/* buffer.c */

struct buffer {
	char **buffer;
	int size;
	int current;
};

typedef struct buffer *BUF_P;

BUF_P buffer_init();
BUF_P buffer_init_size(int size);
char* buffer_malloc(BUF_P handle, size_t length);
char* buffer_strdup(BUF_P handle, const char *cpy);
char* buffer_quote(BUF_P handle, const char *cpy);
// string is taken by buffer and release on destroy
void buffer_add(BUF_P handle, const char *string);
void buffer_destroy(BUF_P handle);
int buffer_count(BUF_P handle);
char* buffer_get(BUF_P handle, int index);

#endif
