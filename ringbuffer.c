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

/* Maximum simultanous allocated */
#define RINGBUFFER_LEN 100

static char *ringbuffer[RINGBUFFER_LEN];
static int ringbuffer_counter = 0;

void ringbuffer_init() 
{
  int i; 
  for (i = 0; i < RINGBUFFER_LEN; i++)
    ringbuffer[i] = 0;
  ringbuffer_counter = 0;
}

char *ringbuffer_add(char* string, void (*free_fn) (void *) )
{
  if (ringbuffer[ringbuffer_counter])
    free_fn(ringbuffer[ringbuffer_counter]);
  ringbuffer[ringbuffer_counter++] = string;
  if (ringbuffer_counter == RINGBUFFER_LEN) {
    ringbuffer_counter=0;
  }
}

char *ringbuffer_malloc(size_t length)
{
  char *out;
  out = malloc(length);
  out[0] = 0;

  ringbuffer_add(out, free);

  return out;
}

char *ringbuffer_strdup(const char *cpy)
{
  char *out;
  out = strdup(cpy);
  ringbuffer_add(out, free);
  return out;
}


void ringbuffer_destroy() {
  int index; 
  for (index = 0; index < RINGBUFFER_LEN; index++) {
    if (ringbuffer[index]) {
      free(ringbuffer[index]);
      ringbuffer[index] = 0;
    }
  }
  ringbuffer_counter =0;
}
