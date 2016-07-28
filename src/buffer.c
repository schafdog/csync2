/*
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005  Clifford Wolf <clifford@clifford.at>
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "csync2.h"
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "buffer.h"

/* Maximum simultanous allocated */
#define BUFFER_LEN 100

typedef void (*free_fn_t) (void *);

BUF_P buffer_init() {
    return buffer_init_size(BUFFER_LEN);
};

BUF_P buffer_init_size(int size) 
{
    BUF_P handle  = malloc(sizeof(*handle));
    handle->buffer = calloc(sizeof(*handle->buffer), size);
    handle->size = size;
    handle->current = 0;
    return handle;
};

void buffer_add(BUF_P handle, const char* string)
{
    if (handle->current < handle->size) {
	handle->buffer[handle->current] = (char*) string;
	handle->current++;
    }
    else {
	csync_fatal(0, "Buffer too small while adding %s", string);
    }
};

char *buffer_malloc(BUF_P handle, size_t length)
{
    char *out;
    out = malloc(length);
    out[0] = 0;

    buffer_add(handle, out);
    return out;
};

char *buffer_strdup(BUF_P handle, const char *cpy)
{
    char *out = NULL;
    if (cpy) {
	out = strdup(cpy);
	buffer_add(handle, out);
    }
    return out;
};

void buffer_destroy(BUF_P handle) {
    int index;
  
    for (index = 0; index < handle->current; index++) {
	if (handle->buffer[index]) {
	    free(handle->buffer[index]);
	    handle->buffer[index] = 0;
	}
    }
    free(handle->buffer);
    free(handle);
};

int  buffer_getcount(BUF_P handle) {
    return handle->current;
};
