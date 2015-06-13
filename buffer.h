#ifndef BUFFER_H
#define BUFFER_H

/* ringbuffer.c */

struct buffer {
    char ** buffer;
    int size;
    int current;
};

typedef struct buffer *BUF_P;

BUF_P  buffer_init();
BUF_P  buffer_init_size(int size);
char  *buffer_malloc(BUF_P handle, size_t length);
char  *buffer_strdup(BUF_P handle, const char *cpy);
void   buffer_add(BUF_P handle, const char* string);
void   buffer_destroy(BUF_P handle);
int    buffer_getcount(BUF_P handle);

#endif
