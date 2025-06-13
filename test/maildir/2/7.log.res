cmd c "check: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
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
Checking <TESTBASE>/test/local/Maildir/new/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 0
Checking <TESTBASE>/test/local/Maildir/cur/* ..
New file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
1 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check same file (64) <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Found MOVE <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
Inserted/updated <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST rows matched: 0
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 0
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
New file: <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
1 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check same file (32) <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Found HARDLINK <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
mark other: HARDLINK(32) Old operation: MV(16) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' ''
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
