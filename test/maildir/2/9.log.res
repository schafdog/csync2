cmd x "9 Remove files. Removed from other" local peer test
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
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir from <TESTBASE>/test/local
Checking <TESTBASE>/test/local/Maildir/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/tmp from <TESTBASE>/test/local/Maildir
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/new from <TESTBASE>/test/local/Maildir
Checking <TESTBASE>/test/local/Maildir/new/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/cur from <TESTBASE>/test/local/Maildir
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' '(null)'
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 1
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' '(null)'
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 1
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
check_old_operation: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '(null)'
mark operation NEW -> RM other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
check_old_operation: RM(64) Old operation: RM(64) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '(null)'
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
check_old_operation: RM(64) Old operation: HARDLINK(32) '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
mark operation HARDLINK -> RM other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S deleted before syncing. Removing from dirty.
dirty: peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/Maildir/.Trash/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/.Trash/cur
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/.Trash/cur
CONN peer < MOD %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur (0)
Directory time <TESTBASE>/test/local/Maildir/.Trash <TESTBASE>/test/local/Maildir/.Trash/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
CONN peer < SIG %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/Maildir/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/cur
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/cur
CONN peer < MOD %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
Directory time <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir/cur
Dirty (missing) item <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S RM NULL 0
Deleting peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN peer < STAT %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=8'
delete flags: 0
CONN peer < DEL %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S (0)
Dirty (missing) item <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST RM NULL 0
Deleting peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN peer < STAT %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=8'
delete flags: 0
CONN peer < DEL %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
SETTIME peer:<TESTBASE>/test/local/Maildir
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 0.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/Maildir/.Trash
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash 0.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
