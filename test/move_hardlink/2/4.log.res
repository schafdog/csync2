cmd c "read (check)" local peer test
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
Calling check_mod on <TESTBASE>/test/local/Maildir/cur from <TESTBASE>/test/local/Maildir
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 1
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/cur/123,Sab from <TESTBASE>/test/local/Maildir/cur
New file: <TESTBASE>/test/local/Maildir/cur/123,Sab
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur/123,Sab <TESTBASE>/test/local/Maildir/cur/123,Sab
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/Maildir/cur/123,Sab
check same file (64) <TESTBASE>/test/local/Maildir/tmp/123 -> <TESTBASE>/test/local/Maildir/cur/123,Sab 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/local/Maildir/tmp/123, param2: local
Found MOVE <TESTBASE>/test/local/Maildir/tmp/123 -> <TESTBASE>/test/local/Maildir/cur/123,Sab 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'.
check_old_operation: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/tmp/123' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123' '<TESTBASE>/test/local/Maildir/tmp/123'.
Inserted/updated <TESTBASE>/test/local/Maildir/cur/123,Sab rows matched: 1
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
