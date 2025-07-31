cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local peer test
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
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/tmp' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/tmp (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/tmp rows matched: 1
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/new from <TESTBASE>/test/local/Maildir
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/new (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/new rows matched: 1
Checking <TESTBASE>/test/local/Maildir/new/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 from <TESTBASE>/test/local/Maildir/new
New file: <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
Inserted/updated <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 rows matched: 1
Calling check_mod on <TESTBASE>/test/local/Maildir/cur from <TESTBASE>/test/local/Maildir
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
dirty: peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 ''
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
CONN peer < SIG %25test%25/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/Maildir/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/new
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/new
CONN peer < MOD %25test%25/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/new (0)
Directory time <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir/new
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
CONN peer < SIG %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/Maildir/tmp is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/tmp
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/tmp
CONN peer < MOD %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp (0)
Updating (NEW) 'peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
CONN peer < SIG %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 RC 32
CONN peer < CREATE %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 8
CONN peer < octet-stream 8

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
Directory time <TESTBASE>/test/local/Maildir/new <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
SETTIME peer:<TESTBASE>/test/local/Maildir/new
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/new 0.
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/Maildir
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 0.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
