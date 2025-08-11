cmd c "check: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
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
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur found false
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/cur MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur found true
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 1
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST from <TESTBASE>/test/local/Maildir/cur
New file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check same file (64) <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S, param2: local
Found MOVE <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST found false
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S NEW
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST found true
check_old_operation: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
Inserted/updated <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST rows matched: 1
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur found false
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/.Trash/cur MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur found true
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 1
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S from <TESTBASE>/test/local/Maildir/.Trash/cur
New file: <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check same file (32) <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Found HARDLINK <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S) AND peername = peer ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST MV
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S found true
check_old_operation: HARDLINK(32) Old operation: MV(16) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST NEW
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S found true
check_old_operation: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' ''
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
