cmd x "New file deleted" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
Checking <TESTBASE>/test/local/* ..
Checking <TESTBASE>/test/local/usr/* ..
Checking <TESTBASE>/test/local/usr/local/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/usr/local/sbin' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local/sbin (not synced) .
Inserted/updated <TESTBASE>/test/local/usr/local/sbin rows matched: 0
Checking <TESTBASE>/test/local/usr/local/sbin/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/usr/local/sbin/hej' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/usr/local/sbin/hej' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/usr/local/sbin/hej v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/usr/local/sbin v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/usr/local/sbin' ''
CONN peer < SIG %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/usr/local/sbin RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/usr/local/sbin is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/usr/local/sbin
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/usr/local/sbin
CONN peer < MOD %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local/sbin (0)
Dirty (missing) item <TESTBASE>/test/local/usr/local/sbin/hej RM  0
Deleting peer:<TESTBASE>/test/local/usr/local/sbin/hej
CONN peer < STAT %25test%25/usr/local/sbin/hej 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4'
delete flags: 0
CONN peer < DEL %25test%25/usr/local/sbin/hej 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/usr/local/sbin/hej (0)
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
