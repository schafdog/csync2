cmd x "Link local/new_file 'N' all" local peer test
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
Calling check_mod on <TESTBASE>/test/local/new_file 'N' all.link from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/new_file 'N' all.link
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'.
Inserted/updated <TESTBASE>/test/local/new_file 'N' all.link rows matched: 1
Calling check_mod on <TESTBASE>/test/local/new_file 'N' all from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/new_file 'N' all
csync_check_file_same_dev_inode <TESTBASE>/test/local/new_file 'N' all <TESTBASE>/test/local/new_file 'N' all
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
Inserted/updated <TESTBASE>/test/local/new_file 'N' all rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/new_file 'N' all.link v2:mtime=xxxxxxxxxx:mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file 'N' all ''
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
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
Updating (NEW) 'peer:<TESTBASE>/test/local/new_file 'N' all' ''
CONN peer < SIG %25test%25/new_file%20%27N%27%20all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new_file 'N' all RC 32
CONN peer < CREATE %25test%25/new_file%20%27N%27%20all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/new_file 'N' all 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/new_file 'N' all
Updating (LINK) 'peer:<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'
CONN peer < SIG %25test%25/new_file%20%27N%27%20all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new_file 'N' all.link RC 32
CONN peer < MKLINK %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETOWN %25test%25/new_file%20%27N%27%20all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (cmd_finished).'
Skipping setmod on link peer:<TESTBASE>/test/local/new_file 'N' all.link
CONN peer < SETTIME %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all.link (0)
Directory time new_file 'N' all new_file 'N' all
SETTIME peer:new_file 'N' all
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
