/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
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

#include "csync2.hpp"
#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include "ringbuffer.hpp"

/* Maximum simultanous allocated */
#define RINGBUFFER_LEN 10000

typedef void (*free_fn_t)(void*);
static char *ringbuffer[RINGBUFFER_LEN];
static free_fn_t free_fn_buffer[RINGBUFFER_LEN];
static int ringbuffer_counter = 0;

void ringbuffer_init(void) {
	int i;
	for (i = 0; i < RINGBUFFER_LEN; i++) {
		ringbuffer[i] = 0;
		free_fn_buffer[i] = 0;
	}
	ringbuffer_counter = 0;
}

void ringbuffer_add(char *string, free_fn_t free_fn) {
	if (ringbuffer[ringbuffer_counter]) {
		if (free_fn_buffer[ringbuffer_counter])
			free_fn_buffer[ringbuffer_counter](ringbuffer[ringbuffer_counter]);
		else
			free(ringbuffer[ringbuffer_counter]);
	}
	ringbuffer[ringbuffer_counter] = string;
	free_fn_buffer[ringbuffer_counter++] = free_fn;
	if (ringbuffer_counter == RINGBUFFER_LEN) {
		ringbuffer_counter = 0;
	}
}

char* ringbuffer_malloc(size_t length) {
	char *out;
	out = static_cast<char*>(malloc(length));
	out[0] = 0;

	ringbuffer_add(out, 0);

	return out;
}

char* ringbuffer_strdup(const char *cpy) {
	char *out;
	out = strdup(cpy);
	ringbuffer_add(out, free);
	return out;
}

void ringbuffer_destroy(void) {
	int index;
	for (index = 0; index < RINGBUFFER_LEN; index++) {
		if (ringbuffer[index]) {
			free(ringbuffer[index]);
			ringbuffer[index] = 0;
		}
	}
	ringbuffer_counter = 0;
}

int ringbuffer_getcount(void) {
	return ringbuffer_counter;
}
