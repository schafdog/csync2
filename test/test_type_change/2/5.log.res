cmd x "5 File to directory (type change)" local peer test/local
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test/local' flags 65 
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/type_change from <TESTBASE>/test/local
File <TESTBASE>/test/local/type_change has changed mode 32768 => 16384 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/type_change' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/type_change' '-'.
mark other: MOD_DIR(257) Old operation: MKDIR(1) '<TESTBASE>/test/local/type_change' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/type_change (not synced) .
Inserted/updated <TESTBASE>/test/local/type_change rows matched: 1
Checking <TESTBASE>/test/local/type_change/* ..
Calling check_mod on <TESTBASE>/test/local/type_change/new_file 'N' all from <TESTBASE>/test/local/type_change
New file: <TESTBASE>/test/local/type_change/new_file 'N' all
csync_check_file_same_dev_inode <TESTBASE>/test/local/type_change/new_file 'N' all <TESTBASE>/test/local/type_change/new_file 'N' all
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
Inserted/updated <TESTBASE>/test/local/type_change/new_file 'N' all rows matched: 1
Checking for deleted files <TESTBASE>/test/local recursive.
dirty: peer:<TESTBASE>/test/local/type_change/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/type_change v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local
CONN peer < MOD %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Directory time <TESTBASE>/test <TESTBASE>/test/local
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/type_change' ''
CONN peer < SIG %25test%25/type_change user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/type_change RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=9'
<TESTBASE>/test/local/type_change is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Signature size differs: local=0, peer=32
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/type_change
rs_check: Found EOF in local sig file (<TESTBASE>/test/local/type_change) before reading chuck (32) .
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            <TESTBASE>/test/local/type_change
CONN peer < MKDIR %25test%25/type_change - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/type_change (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/type_change
Updating (NEW) 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' ''
CONN peer < SIG %25test%25/type_change/new_file%20%27N%27%20all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/type_change/new_file 'N' all RC 32
CONN peer < CREATE %25test%25/type_change/new_file%20%27N%27%20all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/type_change/new_file 'N' all 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/type_change/new_file 'N' all (0)
Directory time <TESTBASE>/test/local/type_change <TESTBASE>/test/local/type_change/new_file 'N' all
SETTIME peer:<TESTBASE>/test/local/type_change
update_directory: Setting directory time <TESTBASE>/test/local/type_change 0.
CONN peer < SETTIME %25test%25/type_change 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
