cmd c "4 Read and deleted (check)" local peer test
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
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 0
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
New file: <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
check same file (32) <TESTBASE>/test/local/Maildir/cur/123,Sab -> <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab 
Found HARDLINK <TESTBASE>/test/local/Maildir/cur/123,Sab -> <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'.
mark other: HARDLINK(32) Old operation: MV(16) '<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/123,Sab' ''
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
