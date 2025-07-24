cmd x "3. New local/no_permission" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
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
Calling check_mod on <TESTBASE>/test/local/no_permission from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/no_permission
ERROR: Failed to open <TESTBASE>/test/local/no_permission for digest:-1
ERROR: generating digest for file: <TESTBASE>/test/local/no_permission -1
csync_check_file_mod: calc_digest failed. Skipping <TESTBASE>/test/local/no_permission v2:mtime=<MTIME>mode=32896:user=<USER>:group=<GROUP>:type=reg:size=4
Calling check_mod on <TESTBASE>/test/local/A from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/A
csync_check_file_same_dev_inode <TESTBASE>/test/local/A <TESTBASE>/test/local/A
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/A' '-'.
Inserted/updated <TESTBASE>/test/local/A rows matched: 1
Calling check_mod on <TESTBASE>/test/local/.Test from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/.Test
csync_check_file_same_dev_inode <TESTBASE>/test/local/.Test <TESTBASE>/test/local/.Test
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/.Test' '-'.
Inserted/updated <TESTBASE>/test/local/.Test rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/A v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
dirty: peer:<TESTBASE>/test/local/.Test v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
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
Updating (NEW) 'peer:<TESTBASE>/test/local/.Test' ''
CONN peer < SIG %25test%25/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/.Test RC 32
CONN peer < CREATE %25test%25/.Test - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/.Test 0
CONN peer < octet-stream 0

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/.Test (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/.Test
Updating (NEW) 'peer:<TESTBASE>/test/local/A' ''
CONN peer < SIG %25test%25/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/A RC 32
CONN peer < CREATE %25test%25/A - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/A 0
CONN peer < octet-stream 0

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/A (0)
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
