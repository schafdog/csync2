cmd x "3. Sync with missing directories" local peer test
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
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/recursive from <TESTBASE>/test/local
Checking <TESTBASE>/test/local/recursive/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1 from <TESTBASE>/test/local/recursive
Checking <TESTBASE>/test/local/recursive/1/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2 from <TESTBASE>/test/local/recursive/1
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3 from <TESTBASE>/test/local/recursive/1/2
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4 from <TESTBASE>/test/local/recursive/1/2/3
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4/5 from <TESTBASE>/test/local/recursive/1/2/3/4
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
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
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'ERROR (Path not found): <TESTBASE>/test'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5 RC -13
PATH MISSING: '<TESTBASE>/test'
PATH MISSING (decoded): '<TESTBASE>/test'
UPDATE_DIRECTORY: 0
creating directory <TESTBASE>/test/local
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive
CONN peer < MKDIR %25test%25/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1
CONN peer < MKDIR %25test%25/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1/2
CONN peer < MKDIR %25test%25/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1/2/3
CONN peer < MKDIR %25test%25/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
creating directory <TESTBASE>/test/local/recursive/1/2/3/4
CONN peer < MKDIR %25test%25/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
UPDATE_DIRECTORY: 4
Fixed missing path for file <TESTBASE>/test/local/recursive/1/2/3/4/5
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
CONN peer < BYE

CONN peer > 'OK (cu_later).'
