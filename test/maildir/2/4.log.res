cmd x "move Maildir/new/1434.M21,S=6631,W=6764 Maildir/cur/1434.M21,S=6631,W=6764:2," local peer test
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
Checking <TESTBASE>/test/local/Maildir/* ..
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/new (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/new rows matched: 0
Checking <TESTBASE>/test/local/Maildir/new/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 0
Checking <TESTBASE>/test/local/Maildir/cur/* ..
New file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
1 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
check same file (64) <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
Found MOVE <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
Inserted/updated <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, rows matched: 0
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8 ''
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=1742890060:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=1742890060:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/Maildir/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/cur
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/cur
CONN peer < MOD %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
CONN peer < SIG %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/Maildir/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/new
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/new
CONN peer < MOD %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/new (0)
Updating (MV) 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'
CONN peer < MV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 
CONN peer > 'OK (cmd_finished).'
Succes: MV <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, (0)
Clear dirty peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
