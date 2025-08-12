cmd x "4. rm directory with ignore files" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
No match. Don't check at all: <TESTBASE>/test/peer
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1/2/3/4' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1/2/3' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1/2' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive deleted before syncing. Removing from dirty.
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
Dirty (missing) item <TESTBASE>/test/local/recursive RM NULL 0
Deleting peer:<TESTBASE>/test/local/recursive
CONN peer < STAT %25test%25/recursive 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
delete flags: 0
CONN peer < DEL %25test%25/recursive 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/recursive (0)
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/local/recursive, param2: <TESTBASE>/test/local/recursive/%, param3: local
DELETE (<TESTBASE>/test/local/recursive) Last dir: <TESTBASE>/test/local/recursive/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/recursive/1 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/recursive/1) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5 RM NULL 0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RM NULL 0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c) from deleted directory (<TESTBASE>/test/local/recursive/)
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
