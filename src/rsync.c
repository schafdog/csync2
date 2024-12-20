/*  -*- c-file-style: "k&r"; c-basic-offset: 4; tab-width: 4; indent-tabs-mode: t -*-
 *  csync2 - cluster synchronization tool, 2nd generation
 *  LINBIT Information Technologies GmbH <http://www.linbit.com>
 *  Copyright (C) 2004, 2005, 2006  Clifford Wolf <clifford@clifford.at>
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
#include "redis.h"
#include <librsync.h>

#if defined(RS_MD4_LENGTH)
#define STRONG_LEN 16
#elif defined(RS_MAX_STRONG_SUM_LENGTH) 
/* Version 1.x */
#define STRONG_LEN 0
#endif

#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <stdio.h>

/* for tmpfile replacement: */
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <time.h>

/* for MAXPATHLEN */
#include <sys/param.h>

#ifdef HAVE_LIBBSD
#include <bsd/string.h>
#endif

#ifdef __CYGWIN__
#include <w32api/windows.h>
#endif

/* This has been taken from rsync:lib/compat.c */

/**
 * Like strncpy but does not 0 fill the buffer and always null
 * terminates.
 *
 * @param bufsize is the size of the destination buffer.
 *
 * @return index of the terminating byte.
 **/
#ifndef HAVE_STRLCPY
static size_t strlcpy(char *d, const char *s, size_t bufsize)
{
  size_t len = strlen(s);
  size_t ret = len;
  if (bufsize > 0) {
    if (len >= bufsize)
      len = bufsize-1;
    memcpy(d, s, len);
    d[len] = 0;
  }
  return ret;
}
#endif

/* This has been taken from rsync sources: receiver.c */

#define TMPNAME_SUFFIX ".XXXXXX"
#define TMPNAME_SUFFIX_LEN ((int)sizeof TMPNAME_SUFFIX - 1)
#define MAX_UNIQUE_NUMBER 999999
#define MAX_UNIQUE_LOOP 100

/* get_tmpname() - create a tmp filename for a given filename
 *
 * If a tmpdir is defined, use that as the directory to put it in.  Otherwise,
 * the tmp filename is in the same directory as the given name.  Note that
 * there may be no directory at all in the given name!
 *
 * The tmp filename is basically the given filename with a dot prepended, and
 * .XXXXXX appended (for mkstemp() to put its unique gunk in).  We take care
 * to not exceed either the MAXPATHLEN or NAME_MAX, especially the last, as
 * the basename basically becomes 8 characters longer.  In such a case, the
 * original name is shortened sufficiently to make it all fit.
 *
 * If the make_unique arg is True, the XXXXXX string is replaced with a unique
 * string that doesn't exist at the time of the check.  This is intended to be
 * used for creating hard links, symlinks, devices, and special files, since
 * normal files should be handled by mkstemp() for safety.
 *
 * Of course, the only reason the file is based on the original name is to
 * make it easier to figure out what purpose a temp file is serving when a
 * transfer is in progress. */

static int get_tmpname(char *fnametmp, const char *fname, int make_unique) {
	int maxname, added, length = 0;
	const char *f;
	char *suf;

	static unsigned counter_limit = 0;
	unsigned counter;

	if ((f = strrchr(fname, '/')) != NULL) {
		++f;
		length = f - fname;
		/* copy up to and including the slash */
		strlcpy(fnametmp, fname, length + 1);
	} else
		f = fname;
	fnametmp[length++] = '.';

	/* The maxname value is bufsize, and includes space for the '\0'.
	 * NAME_MAX needs an extra -1 for the name's leading dot. */
	maxname = MIN(MAXPATHLEN - length - TMPNAME_SUFFIX_LEN, NAME_MAX - 1 - TMPNAME_SUFFIX_LEN);

	if (maxname < 1) {
		csync_error(1, "temporary filename too long: %s\n", fname);
		fnametmp[0] = '\0';
		return 0;
	}

	added = strlcpy(fnametmp + length, f, maxname);
	if (added >= maxname)
		added = maxname - 1;
	suf = fnametmp + length + added;

	if (make_unique) {
		if (!counter_limit) {
			counter_limit = (unsigned) getpid() + MAX_UNIQUE_LOOP;
			if (counter_limit > MAX_UNIQUE_NUMBER || counter_limit < MAX_UNIQUE_LOOP)
				counter_limit = MAX_UNIQUE_LOOP;
		}
		counter = counter_limit - MAX_UNIQUE_LOOP;

		/* This doesn't have to be very good because we don't need
		 * to worry about someone trying to guess the values:  all
		 * a conflict will do is cause a device, special file, hard
		 * link, or symlink to fail to be created.  Also: avoid
		 * using mktemp() due to gcc's annoying warning. */
		while (1) {
			snprintf(suf, TMPNAME_SUFFIX_LEN+1, ".%d", counter);
			if (access(fnametmp, 0) < 0)
				break;
			if (++counter >= counter_limit)
				return 0;
		}
	} else
		memcpy(suf, TMPNAME_SUFFIX, TMPNAME_SUFFIX_LEN+1);

	return 1;
}

/* Returns open file handle for a temp file that resides in the
 same directory as file fname. The file must be removed after
 usage.
 */

static FILE* open_temp_file(char *fnametmp, const char *fname) {
	FILE *f;
	int fd;

	if (get_tmpname(fnametmp, fname, 0) == 0) {
		csync_error(1, "ERROR: Couldn't find tempname for file %s\n", fname);
		return NULL;
	}

	f = NULL;
	//fd = mkstemp(fnametmp);
	// Let csync2 tail ignore this file for 5 minutes
	fd = open(fnametmp, O_CREAT | O_EXCL | O_RDWR, S_IWUSR | S_IRUSR);
	if (fd >= 0) {
		csync_redis_set_int(fnametmp, "CREATE", time(NULL), 0, 300);
		f = fdopen(fd, "wb+");
		/* not unlinking since rename wouldn't work then */
	}
	if (fd < 0 || !f) {
		csync_error(1, "ERROR: Could not open result from tempnam(%s)!\n", fnametmp);
		return NULL;
	}

	return f;
}

#ifdef _SVID_SOURCE
static FILE *paranoid_tmpfile()
{
  //char *name;
  FILE *f;
  int fd;
  char *template = "csync2.XXXXXX";
  char *name =  strdup(template);
  fd = mkstemp(name);
  
  //fd = open(name, O_CREAT | O_EXCL | O_RDWR, S_IWUSR | S_IRUSR); */
  if (fd >= 0) {
    f = fdopen(fd, "wb+");
    unlink(name);
  }
  if (fd < 0 || !f)
    csync_fatal("ERROR: Could not open result from tempnam(%s)!\n", name);

  csync_log(LOG_DEBUG, 3, "Tempfilename is %s\n", name);
  free(name);
  return f;
}
#else
static FILE* paranoid_tmpfile() {
	FILE *f;

	if (access(P_tmpdir, R_OK | W_OK | X_OK) < 0)
		csync_fatal("Temp directory '%s' does not exist!\n", P_tmpdir);

	if (!(f = tmpfile()))
		csync_fatal("ERROR: tmpfile() didn't return a valid file handle!\n");

	return f;
}
#endif

int csync_send_file_chunked(int conn, FILE *in) {
	long size;
	fflush(in);
	size = ftell(in);
	rewind(in);
	csync_info(1, "Sending chunked stream of %ld bytes\n", size);
	conn_printf(conn, "octet-stream %ld\n", size);
	if (size > 0) 
		return conn_send_file_chunked(conn, in);
	return 0;
}

int csync_send_file_octet_stream(int conn, FILE *in) {
	char buffer[CHUNK_SIZE];
	int rc, chunk;
	long size;

	fflush(in);
	size = ftell(in);
	rewind(in);

	csync_debug(1, "Sending octet-stream of %ld bytes\n", size);
	conn_printf(conn, "octet-stream %ld\n", size);

	while (size > 0) {
		chunk = size > CHUNK_SIZE ? CHUNK_SIZE : size;
		rc = fread(buffer, 1, chunk, in);

		if (rc <= 0)
			csync_fatal("Read-error while sending data.\n");
		chunk = rc;

		rc = conn_write(conn, buffer, chunk);
		if (rc != chunk)
			csync_fatal("Write-error while sending data.\n");

		size -= chunk;
	}
	return 0;
}

void csync_send_file(int conn, FILE *in) {
	if (OCTET_STREAM)
		csync_send_file_octet_stream(conn, in);
	else
		csync_send_file_chunked(conn, in);
}

int rsync_close_error(int err_no, FILE *delta_file, FILE *basis_file, FILE *new_file) {
	if (delta_file)
		fclose(delta_file);
	if (basis_file)
		fclose(basis_file);
	if (new_file)
		fclose(new_file);
	errno = err_no;
	return -1;
}

void csync_send_error(int conn) {
	conn_printf(conn, "ERROR\n");
}

const char *typestr[2] = { "octet-stream", "chunked" };

int csync_recv_file_chunked(int conn, FILE *out) {
	long long size;
	int type;
	if (conn_read_get_content_length(conn, &size, &type)) {
		if (errno == EIO)
			return -1;
		csync_fatal("Format-error while receiving data length for file (%ld) .\n", size);
		size = 0;
		return -2;
	}
	if (size > 0) {
		csync_log(LOG_DEBUG, 1, "Receiving %Ld bytes (%s)..\n", size, typestr[2 - 1]);	
		conn_read_file_chunked(conn, out);
	} else {
		csync_log(LOG_DEBUG, 1, "Skipping chunked reading when zero\n");
	}
				
	fflush(out); 
	rewind(out);
	return 0;
}

int csync_recv_file_octet_stream(int conn, FILE *out) {
	char buffer[CHUNK_SIZE];
	int bytes, chunk;
	long long size;
	int type;
	if (conn_read_get_content_length(conn, &size, &type)) {
		if (errno == EIO)
			return -1;
		csync_fatal("Format-error while receiving data length for file (%ld) .\n", size);
		size = 0;
		return -2;
	}

	csync_log(LOG_DEBUG, 1, "Receiving %Ld bytes (%s)..\n", size, typestr[type - 1]);
	while (size > 0) {
		chunk = size > CHUNK_SIZE ? CHUNK_SIZE : size;
		bytes = conn_read(conn, buffer, chunk);

		if (bytes <= 0)
			csync_fatal("Read-error while receiving data.\n");
		chunk = bytes;

		bytes = fwrite(buffer, chunk, 1, out);
		if (bytes != 1)
			csync_fatal("Write-error while receiving data.\n");

		size -= chunk;
		if (csync_level_debug >= 3)
			csync_log(LOG_DEBUG, 3, "Got %d bytes, %ld bytes left ..\n", chunk, size);
	}

	fflush(out);
	rewind(out);
	return 0;
}

int csync_recv_file(int conn, FILE *out) {
	if (OCTET_STREAM)
		return csync_recv_file_octet_stream(conn, out);
	else
		return csync_recv_file_chunked(conn, out);
}

int csync_rs_check(int conn, filename_p filename, int isreg) {
	FILE *basis_file = 0, *sig_file = 0;
	char buffer1[CHUNK_SIZE], buffer2[CHUNK_SIZE];
	int found_diff = 0;
	size_t chunk;
	ssize_t read;
	rs_stats_t stats;
	rs_result result = 0;
	long long size = 0;

	csync_log(LOG_DEBUG, 3, "Csync2 / Librsync: csync_rs_check('%s', %d [%s])\n", filename, isreg,
			isreg ? "regular file" : "non-regular file");

	csync_log(LOG_DEBUG, 3, "rs_check: Opening basis_file and sig_file..\n");

	sig_file = paranoid_tmpfile();
	/* if ( !sig_file ) 
	 return rsync_check_io_error(...);
	 */

	if (isreg) {
		basis_file = fopen(filename, "rb");
		if (!basis_file)
			basis_file = fopen("/dev/null", "rb");
		csync_log(LOG_DEBUG, 3, "Running rs_sig_file() from librsync....\n");
		if (basis_file)
			result = rs_sig_file(basis_file, sig_file,
			RS_DEFAULT_BLOCK_LEN, STRONG_LEN,
#ifdef RS_MAX_STRONG_SUM_LENGTH
					RS_MD4_SIG_MAGIC,
#endif
					&stats);
		if (result != RS_DONE) {
			csync_log(LOG_DEBUG, 0, "Internal error from rsync library!\n");
			rsync_close_error(errno, basis_file, sig_file, 0);
		}
		fclose(basis_file);
	}
	basis_file = 0;

	{
		int type;
		csync_log(LOG_DEBUG, 3, "rs_check: Reading signature size from peer....\n");
		if (conn_read_get_content_length(conn, &size, &type)) {
			csync_fatal("Format-error while receiving data length for signature (%Ld) \n", size);
			return -1;
		}
	}

	if (sig_file) {
		fflush(sig_file);
		if (size != ftell(sig_file)) {
			csync_info(2, "rs_check: Signature size differs: local=%d, peer=%Ld\n", ftell(sig_file), size);
			found_diff = 1;
		}
		rewind(sig_file);
	} else {
		csync_info(2, "rs_check: Signature size differs: local don't exist, peer=%Ld\n", size);
		found_diff = 1;
	}
	csync_info(3, "rs_check: Receiving signature %Ld bytes ..\n", size);
	
	while (size > 0) {
		chunk = size > CHUNK_SIZE ? CHUNK_SIZE : size;
		if (OCTET_STREAM) 
		    read = conn_read(conn, buffer1, chunk);
		else
			read = conn_read_chunk(conn, (char **) &buffer1, &chunk);
		if (read == 0) {
			break;
		}
		if (read < 0)
			csync_fatal("Read-error while receiving signature data.\n");
		chunk = read;

		if (sig_file) {
			if (fread(buffer2, chunk, 1, sig_file) != 1) {
				csync_info(2, "rs_check: Found EOF in local sig file (%s) before reading chuck (%d) .\n", filename,
						chunk);
				found_diff = 1;
			} else if (memcmp(buffer1, buffer2, chunk)) {
				csync_info(2, "rs_check: Found diff in sig at -%Ld:-%Ld\n", size, size - chunk);
				found_diff = 1;
			}
		}
		size -= chunk;
		csync_info(3, "Got %d bytes, %Ld bytes left ..\n", chunk, size);
		if (!OCTET_STREAM) {
			if (size == 0) {
				// conn_read_chunk needs to read the zero size chunk
				read = conn_read_chunk(conn, (char **) &buffer1, &chunk);
			} else {
				free(buffer1);
			}			
		}	
	}
		
	csync_info(3, "File has been checked successfully (%s).\n", found_diff ? "difference found" : "files are equal");
	if (sig_file)
		fclose(sig_file);
	return found_diff;
}

int rsync_check_io_error(int err_no, filename_p filename, FILE *basis_file, FILE *sig_file, FILE *new_file) {
	csync_error(0, "I/O Error '%s' in rsync-check: %s\n", strerror(errno), filename);
	return rsync_close_error(err_no, basis_file, sig_file, new_file);

}

void csync_rs_sig(int conn, filename_p filename) {
	FILE *basis_file = 0, *sig_file = 0;
	rs_stats_t stats;
	rs_result result;

	csync_log(LOG_DEBUG, 3, "Csync2 / Librsync: csync_rs_sig('%s')\n", filename);

	csync_log(LOG_DEBUG, 3, "Opening basis_file and sig_file..\n");

	sig_file = paranoid_tmpfile();
	if (!sig_file) {
		rsync_check_io_error(errno, filename, basis_file, sig_file, 0);
		return;
	}

	basis_file = fopen(filename, "rb");
	if (!basis_file)
		basis_file = fopen("/dev/null", "rb");

	csync_log(LOG_DEBUG, 3, "Running rs_sig_file() from librsync..\n");
	result = rs_sig_file(basis_file, sig_file,
	RS_DEFAULT_BLOCK_LEN, STRONG_LEN,
#ifdef RS_MAX_STRONG_SUM_LENGTH
			RS_MD4_SIG_MAGIC,
#endif
			&stats);
	if (result != RS_DONE)
		csync_fatal("Got an error from librsync, too bad!\n");

	csync_log(LOG_DEBUG, 2, "Sending sig_file to peer..\n");
	csync_send_file(conn, sig_file);

	csync_log(LOG_DEBUG, 2, "Signature has been sent to peer successfully.\n");
	fclose(basis_file);
	fclose(sig_file);

	return;
}

void io_error(const char *filename, FILE *basis_file, FILE *sig_file) {
	csync_log(LOG_DEBUG, 0, "I/O Error '%s' in rsync-sig: %s\n", strerror(errno), filename);

	if (basis_file)
		fclose(basis_file);
	if (sig_file)
		fclose(sig_file);
}

int rsync_delta_io_error(int err_no, filename_p filename, FILE *new_file, FILE *delta_file, FILE *sig_file) {
	csync_error(0, "I/O Error '%s' in rsync-delta: %s\n", strerror(errno), filename);
	return rsync_close_error(err_no, new_file, delta_file, sig_file);
}

int csync_rs_delta(int conn, filename_p filename) {
	FILE *sig_file = 0, *new_file = 0, *delta_file = 0;
	rs_result result;
	rs_signature_t *sumset;
	rs_stats_t stats;

	csync_log(LOG_DEBUG, 3, "Csync2 / Librsync: csync_rs_delta('%s')\n", filename);

	csync_log(LOG_DEBUG, 3, "Receiving sig_file from peer..\n");
	sig_file = paranoid_tmpfile();
	if (!sig_file)
		return rsync_delta_io_error(errno, filename, new_file, delta_file, sig_file);

	if (csync_recv_file(conn, sig_file) < 0) {
		fclose(sig_file);
		return -1;
	}
	result = rs_loadsig_file(sig_file, &sumset, &stats);
	if (result != RS_DONE)
		csync_fatal("Got an error from librsync, too bad!\n");
	fclose(sig_file);

	csync_log(LOG_DEBUG, 3, "Opening new_file and delta_file..\n");
	new_file = fopen(filename, "rb");
	if (!new_file) {
		int backup_errno = errno;
		csync_log(LOG_DEBUG, 0, "I/O Error '%s' while %s in rsync-delta: %s\n", strerror(errno),
				"opening data file for reading", filename);
		csync_send_error(conn);
		errno = backup_errno;
		return -1;
	}

	delta_file = paranoid_tmpfile();
	if (!delta_file)
		return rsync_delta_io_error(errno, filename, new_file, delta_file, sig_file);

	csync_log(LOG_DEBUG, 3, "Running rs_build_hash_table() from librsync..\n");
	result = rs_build_hash_table(sumset);
	if (result != RS_DONE)
		csync_fatal("Got an error from librsync, too bad!\n");

	csync_log(LOG_DEBUG, 3, "Running rs_delta_file() from librsync..\n");
	result = rs_delta_file(sumset, new_file, delta_file, &stats);
	if (result != RS_DONE)
		csync_fatal("Got an error from librsync, too bad!\n");

	csync_log(LOG_DEBUG, 3, "Sending delta_file to peer..\n");

	csync_send_file(conn, delta_file);

	csync_log(LOG_DEBUG, 3, "Delta has been created successfully.\n");
	rs_free_sumset(sumset);
	fclose(delta_file);
	fclose(new_file);

	return 0;
}

int rsync_patch_io_error(const char *errstr, filename_p filename, FILE *delta_file, FILE *basis_file, FILE *new_file) {
	csync_error(0, "I/O Error '%s' while %s in rsync-patch: %s\n", strerror(errno), errstr, filename);
	return rsync_close_error(errno, delta_file, basis_file, new_file);
}

int csync_rs_patch(int conn, filename_p filename) {
	FILE *basis_file = 0, *delta_file = 0, *new_file = 0;
	rs_stats_t stats;
	rs_result result;
	char *errstr = "?";
	char newfname[MAXPATHLEN];

	csync_log(LOG_DEBUG, 3, "Csync2 / Librsync: csync_rs_patch('%s')\n", filename);

	csync_log(LOG_DEBUG, 3, "Receiving delta_file from peer..\n");
	delta_file = paranoid_tmpfile();
	if (!delta_file) {
		errstr = "creating delta temp file";
		return rsync_patch_io_error(errstr, filename, basis_file, delta_file, new_file);
	}
	if (csync_recv_file(conn, delta_file)) {

		return rsync_close_error(errno, basis_file, delta_file, new_file);
	}
	csync_log(LOG_DEBUG, 3, "Opening to be patched file on local host..\n");
	basis_file = fopen(filename, "rb");
	if (!basis_file) {
		basis_file = paranoid_tmpfile();
		if (!basis_file) {
			errstr = "opening data file for reading";
			return rsync_patch_io_error(errstr, filename, basis_file, delta_file, new_file);
		}
	}
	csync_log(LOG_DEBUG, 3, "Opening temp file for new data on local host..\n");
	new_file = open_temp_file(newfname, filename);

	if (!new_file) {
		errstr = "creating new data temp file";
		return rsync_patch_io_error(errstr, filename, basis_file, delta_file, new_file);
	}

	csync_log(LOG_DEBUG, 3, "Running rs_patch_file() from librsync..\n", filename);
	result = rs_patch_file(basis_file, delta_file, new_file, &stats);
	if (result != RS_DONE) {
		csync_log(LOG_DEBUG, 0, "Internal error from rsync library!\n");
		rsync_close_error(errno, basis_file, delta_file, new_file);
	}

	fclose(basis_file);

#ifdef __CYGWIN__

  /* TODO: needed? */
  // This creates the file using the native windows API, bypassing
  // the cygwin wrappers and so making sure that we do not mess up the
  // permissions..
  {
    char winfilename[MAX_PATH];
    HANDLE winfh;

    cygwin_conv_to_win32_path(filename, winfilename);
    
    winfh = CreateFile(TEXT(winfilename),
		       GENERIC_WRITE,          // open for writing
		       0,                      // do not share
		       NULL,                   // default security
		       CREATE_ALWAYS,          // overwrite existing
		       FILE_ATTRIBUTE_NORMAL | // normal file
		       FILE_FLAG_OVERLAPPED,   // asynchronous I/O
		       NULL);                  // no attr. template

    if (winfh == INVALID_HANDLE_VALUE) {
      csync_error(0, "Win32 I/O Error %d in rsync-patch: %s\n",
		  (int)GetLastError(), winfilename);
      errno = EACCES;
      rsync_error(errno, winfilename, 0, 0, 0);
    }
    CloseHandle(winfh);
  }
#endif
	csync_log(LOG_DEBUG, 3, "Renaming tmp file to data file..\n");
	// TODO this will break any hardlink to filename. 
	// DS: That is not what we want IMHO

	if (rename(newfname, filename) == 0) {
		csync_redis_set_int(filename, "MOVED_TO", time(NULL), 0, 300);
		csync_info(3, "File '%s' has been patched successfully.\n", filename);
		fclose(delta_file);
		// And a CLOSE_WRITE,CLOSE 
		csync_redis_set_int(filename, "CLOSE_WRITE,CLOSE", time(NULL), 0, 300);
		fclose(new_file);
		// inotify also sends this?
		return 0;
	}
	return rsync_patch_io_error("renaming tmp file to to be patched file", filename, delta_file, basis_file, new_file);
}

static int csync_delta_patch_error(const char *errstr, filename_p filename, FILE *old, FILE *new, rs_job_t *job,
		int err_no) {
	csync_error(0, errstr, filename, err_no);
	rs_file_close(old);
	rs_file_close(new);
	rs_job_free(job);
	return errno;
}

#define BUF_SIZE (4*4096)
static int rsync_rs_recv_delta_and_patch_file(int sock, const char *fname) {
	char in_buf[BUF_SIZE], out_buf[BUF_SIZE];
	char newfname[MAXPATHLEN];
	/* Open new file */
	FILE *new = open_temp_file(newfname, fname);
	csync_redis_set_int(newfname, "CREATE", time(NULL), 0, 300);

	/* Open basis file */
	FILE *old = rs_file_open(fname, "rb", 0);

	rs_job_t *job = rs_patch_begin(rs_file_copy_cb, old);

	/* Setup RSYNC buffers */
	rs_buffers_t bufs = { 0 };
	bufs.next_in = in_buf;
	bufs.next_out = out_buf;
	bufs.avail_out = sizeof(out_buf);

	rs_result res;
	int iter = 0;
	do {
		if (bufs.eof_in == 0) {
			if (bufs.avail_in > BUF_SIZE) {
				/* The job requires more data, but we cannot fit another
				 * message into the input buffer */
				return csync_delta_patch_error("Insufficient buffer capacity: %s %d", fname, old, new, job, -1);
			}

			if (bufs.avail_in > 0) {
				/* Left over tail data, move to front */
				memmove(in_buf, bufs.next_in, bufs.avail_in);
			}

			size_t n_bytes;
			char *buffer = NULL;
			int ret = conn_read_chunk(sock, &buffer, &n_bytes);
			if (ret == -1) {
				return csync_delta_patch_error("Failed to read chunk: %s %d", fname, old, new, job, ret);
			}
			printf("Recieved %zu bytes\n", n_bytes);
			// FAIL check size
			if (n_bytes > 0) {
				memcpy(in_buf + bufs.avail_in, buffer, n_bytes);
				free(buffer);
			}
			bufs.eof_in = n_bytes == 0;

			bufs.next_in = in_buf;
			bufs.avail_in += n_bytes;
		}
		res = rs_job_iter(job, &bufs);
		if (res != RS_DONE && res != RS_BLOCKED) {
			csync_error(0, "Failed job %d iteration: %d", iter, res);
			return csync_delta_patch_error("Failed job iteration: %s %d", fname, old, new, job, res);
		}

		/* Drain output buffer, if there is data */
		size_t present = bufs.next_out - out_buf;
		if (present > 0) {
			size_t n_bytes = fwrite(out_buf, present, 1, new);

			if (n_bytes == 0) {
				return csync_delta_patch_error("Failed to write to tmp file: %s %d", fname, old, new, job, -1);
			}

			bufs.next_out = out_buf;
			bufs.avail_out = sizeof(out_buf);
		}
		iter++;
	} while (res != RS_DONE);

	rs_file_close(new);
	rs_file_close(old);
	rs_job_free(job);

	// TODO this will break any hardlink to filename. 
	// DS: That is not what we want IMHO

	if (rename(newfname, fname) == 0) {
		csync_redis_set_int(fname, "MOVED_TO", time(NULL), 0, 300);
		csync_info(3, "File '%s' has been patched successfully.\n", fname);
		// And a CLOSE_WRITE,CLOSE 
		csync_redis_set_int(fname, "CLOSE_WRITE,CLOSE", time(NULL), 0, 300);
		// inotify also sends this?
		return 0;
	}
	csync_error(0, "Renaming tmp to %s failed", fname);
	return -1;
}
