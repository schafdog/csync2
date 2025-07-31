cmd x "New local/ÆØÅ Café with utf8" local peer test
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
Calling check_mod on <TESTBASE>/test/local/ÆØÅ Café.utf8 from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/ÆØÅ Café.utf8
csync_check_file_same_dev_inode <TESTBASE>/test/local/ÆØÅ Café.utf8 <TESTBASE>/test/local/ÆØÅ Café.utf8
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
Inserted/updated <TESTBASE>/test/local/ÆØÅ Café.utf8 rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/ÆØÅ Café.utf8 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
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
Updating (NEW) 'peer:<TESTBASE>/test/local/ÆØÅ Café.utf8' ''
CONN peer < SIG %25test%25/ÆØÅ%20Café.utf8 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/ÆØÅ Café.utf8 RC 32
CONN peer < CREATE %25test%25/ÆØÅ%20Café.utf8 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/ÆØÅ Café.utf8 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/ÆØÅ Café.utf8 (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/ÆØÅ Café.utf8
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
