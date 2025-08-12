cmd x "Setup Maildir" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
New file: <TESTBASE>/test/local
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local found false
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local) AND peername = other ORDER BY timestamp 
csync_mark_other: Before check_old other:<TESTBASE>/test/local found false
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/Maildir
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir found false
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir) AND peername = other ORDER BY timestamp 
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir found false
Inserted/updated <TESTBASE>/test/local/Maildir rows matched: 1
Checking <TESTBASE>/test/local/Maildir/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/tmp from <TESTBASE>/test/local/Maildir
New file: <TESTBASE>/test/local/Maildir/tmp
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/tmp <TESTBASE>/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/tmp 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/tmp) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/tmp found false
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/tmp 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/tmp) AND peername = other ORDER BY timestamp 
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/tmp found false
Inserted/updated <TESTBASE>/test/local/Maildir/tmp rows matched: 1
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/new from <TESTBASE>/test/local/Maildir
New file: <TESTBASE>/test/local/Maildir/new
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/new <TESTBASE>/test/local/Maildir/new
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/new 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/new) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/new found false
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/new 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/new) AND peername = other ORDER BY timestamp 
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/new found false
Inserted/updated <TESTBASE>/test/local/Maildir/new rows matched: 1
Checking <TESTBASE>/test/local/Maildir/new/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/cur from <TESTBASE>/test/local/Maildir
New file: <TESTBASE>/test/local/Maildir/cur
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur <TESTBASE>/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur found false
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur) AND peername = other ORDER BY timestamp 
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur found false
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 1
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
New file: <TESTBASE>/test/local/Maildir/.Trash
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash <TESTBASE>/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash found false
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash) AND peername = other ORDER BY timestamp 
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash found false
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash rows matched: 1
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
New file: <TESTBASE>/test/local/Maildir/.Trash/cur
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur <TESTBASE>/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur found false
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur) AND peername = other ORDER BY timestamp 
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur found false
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 1
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Directory time <TESTBASE>/test <TESTBASE>/test/local
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir' ''
CONN peer < SIG %25test%25/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir RC 32
CONN peer < MKDIR %25test%25/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/Maildir
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash' ''
CONN peer < SIG %25test%25/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash RC 32
CONN peer < MKDIR %25test%25/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash (0)
Directory time <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir/.Trash
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur RC 32
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur (0)
Directory time <TESTBASE>/test/local/Maildir/.Trash <TESTBASE>/test/local/Maildir/.Trash/cur
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
CONN peer < SIG %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 32
CONN peer < MKDIR %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
CONN peer < SIG %25test%25/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/new RC 32
CONN peer < MKDIR %25test%25/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/new (0)
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
CONN peer < SIG %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp RC 32
CONN peer < MKDIR %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp (0)
SETTIME peer:<TESTBASE>/test/local/Maildir/.Trash
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash 0.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/Maildir
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 0.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
