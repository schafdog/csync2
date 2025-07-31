cmd x "New directory" local peer test
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
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/usr from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/usr
csync_check_file_same_dev_inode <TESTBASE>/test/local/usr <TESTBASE>/test/local/usr
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr' '-'.
Inserted/updated <TESTBASE>/test/local/usr rows matched: 1
Checking <TESTBASE>/test/local/usr/* ..
Calling check_mod on <TESTBASE>/test/local/usr/local from <TESTBASE>/test/local/usr
New file: <TESTBASE>/test/local/usr/local
csync_check_file_same_dev_inode <TESTBASE>/test/local/usr/local <TESTBASE>/test/local/usr/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr/local' '-'.
Inserted/updated <TESTBASE>/test/local/usr/local rows matched: 1
Checking <TESTBASE>/test/local/usr/local/* ..
Calling check_mod on <TESTBASE>/test/local/usr/local/sbin from <TESTBASE>/test/local/usr/local
New file: <TESTBASE>/test/local/usr/local/sbin
csync_check_file_same_dev_inode <TESTBASE>/test/local/usr/local/sbin <TESTBASE>/test/local/usr/local/sbin
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
Inserted/updated <TESTBASE>/test/local/usr/local/sbin rows matched: 1
Checking <TESTBASE>/test/local/usr/local/sbin/* ..
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/usr/local/sbin v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/usr/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/usr v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr' ''
CONN peer < SIG %25test%25/usr user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr RC 32
CONN peer < MKDIR %25test%25/usr - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/usr
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local' ''
CONN peer < SIG %25test%25/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr/local RC 32
CONN peer < MKDIR %25test%25/usr/local - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local (0)
Directory time <TESTBASE>/test/local/usr <TESTBASE>/test/local/usr/local
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local/sbin' ''
CONN peer < SIG %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr/local/sbin RC 32
CONN peer < MKDIR %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local/sbin (0)
Directory time <TESTBASE>/test/local/usr/local <TESTBASE>/test/local/usr/local/sbin
SETTIME peer:<TESTBASE>/test/local/usr/local
update_directory: Setting directory time <TESTBASE>/test/local/usr/local 0.
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/usr
update_directory: Setting directory time <TESTBASE>/test/local/usr 0.
CONN peer < SETTIME %25test%25/usr 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
