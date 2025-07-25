cmd x "6 Directory to file (type change)" local peer test/local
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
File <TESTBASE>/test/local/type_change has changed mode 16384 => 32768 
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/type_change' '-'.
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/type_change' '-'.
mark other: MOD(258) Old operation: MOD(1) '<TESTBASE>/test/local/type_change' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/type_change (not synced) .
Inserted/updated <TESTBASE>/test/local/type_change rows matched: 0
Checking for deleted files <TESTBASE>/test/local recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/type_change/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/type_change/new_file 'N' all deleted before syncing. Removing from dirty.
csync_file_args: '<TESTBASE>/test/local' flags 65 
dirty: peer:<TESTBASE>/test/local/type_change/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/type_change v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11 ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Using alternative port to localhost:30861 
Connecting to localhost:30861 
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
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local
CONN peer < MOD %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Updating (MOD) 'peer:<TESTBASE>/test/local/type_change' ''
CONN peer < SIG %25test%25/type_change user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/type_change RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/type_change is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Signature size differs: local=32, peer=0
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/type_change
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            <TESTBASE>/test/local/type_change
CONN peer < PATCH %25test%25/type_change - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
CONN peer < octet-stream 17

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/type_change (0)
Dirty (missing) item <TESTBASE>/test/local/type_change/new_file 'N' all RM  0
Deleting peer:<TESTBASE>/test/local/type_change/new_file 'N' all
CONN peer < STAT %25test%25/type_change/new_file%20%27N%27%20all 
CONN peer > 'ERROR (Path not found): %25test%25/type_change'
peer:<TESTBASE>/test/local/type_change/new_file 'N' all is already up to date on peer.
Clear dirty peer:<TESTBASE>/test/local/type_change/new_file 'N' all (0)
DELETE (<TESTBASE>/test/local/type_change/new_file 'N' all) Last dir: <TESTBASE>/test/local/type_change/new_file 'N' all/. rc: 4
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
