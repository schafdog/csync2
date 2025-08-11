cmd x "2. New test/local/recursive/1/2/3/4/5/file.c" local peer test
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
Calling check_mod on <TESTBASE>/test/local/recursive from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/recursive
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive <TESTBASE>/test/local/recursive
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/recursive' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/recursive' '-'.
Inserted/updated <TESTBASE>/test/local/recursive rows matched: 1
Checking <TESTBASE>/test/local/recursive/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1 from <TESTBASE>/test/local/recursive
New file: <TESTBASE>/test/local/recursive/1
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1 <TESTBASE>/test/local/recursive/1
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/recursive/1' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/recursive/1' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2 from <TESTBASE>/test/local/recursive/1
New file: <TESTBASE>/test/local/recursive/1/2
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2 <TESTBASE>/test/local/recursive/1/2
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/recursive/1/2' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/recursive/1/2' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1/2 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3 from <TESTBASE>/test/local/recursive/1/2
New file: <TESTBASE>/test/local/recursive/1/2/3
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3 <TESTBASE>/test/local/recursive/1/2/3
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/recursive/1/2/3' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4 from <TESTBASE>/test/local/recursive/1/2/3
New file: <TESTBASE>/test/local/recursive/1/2/3/4
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4 <TESTBASE>/test/local/recursive/1/2/3/4
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4/5 from <TESTBASE>/test/local/recursive/1/2/3/4
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5 <TESTBASE>/test/local/recursive/1/2/3/4/5
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c from <TESTBASE>/test/local/recursive/1/2/3/4/5
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11 ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MKDIR) 'peer:<TESTBASE>/test/local/recursive' ''
CONN peer < SIG %25test%25/recursive user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive RC 32
CONN peer < MKDIR %25test%25/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/recursive
Updating (MKDIR) 'peer:<TESTBASE>/test/local/recursive/1' ''
CONN peer < SIG %25test%25/recursive/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1 RC 32
CONN peer < MKDIR %25test%25/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1 (0)
Directory time <TESTBASE>/test/local/recursive <TESTBASE>/test/local/recursive/1
Updating (MKDIR) 'peer:<TESTBASE>/test/local/recursive/1/2' ''
CONN peer < SIG %25test%25/recursive/1/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2 (0)
Directory time <TESTBASE>/test/local/recursive/1 <TESTBASE>/test/local/recursive/1/2
Updating (MKDIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3' ''
CONN peer < SIG %25test%25/recursive/1/2/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3 (0)
Directory time <TESTBASE>/test/local/recursive/1/2 <TESTBASE>/test/local/recursive/1/2/3
Updating (MKDIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4 (0)
Directory time <TESTBASE>/test/local/recursive/1/2/3 <TESTBASE>/test/local/recursive/1/2/3/4
Updating (MKDIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2/3/4/5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 (0)
Directory time <TESTBASE>/test/local/recursive/1/2/3/4 <TESTBASE>/test/local/recursive/1/2/3/4/5
Updating (NEW) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5/file.c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RC 32
CONN peer < CREATE %25test%25/recursive/1/2/3/4/5/file.c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c 11
CONN peer < octet-stream 11

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c (0)
Directory time <TESTBASE>/test/local/recursive/1/2/3/4/5 <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
SETTIME peer:<TESTBASE>/test/local/recursive/1/2/3/4/5
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2/3/4/5 0.
CONN peer < SETTIME %25test%25/recursive/1/2/3/4/5 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/recursive/1/2/3/4
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2/3/4 0.
CONN peer < SETTIME %25test%25/recursive/1/2/3/4 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/recursive/1/2/3
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2/3 0.
CONN peer < SETTIME %25test%25/recursive/1/2/3 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/recursive/1/2
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2 0.
CONN peer < SETTIME %25test%25/recursive/1/2 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/recursive/1
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1 0.
CONN peer < SETTIME %25test%25/recursive/1 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/recursive
update_directory: Setting directory time <TESTBASE>/test/local/recursive 0.
CONN peer < SETTIME %25test%25/recursive 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
