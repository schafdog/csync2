cmd c "9 hardlinked when checked" local peer test
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
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new (not synced) .
Inserted/updated <TESTBASE>/test/local/new rows matched: 0
Checking <TESTBASE>/test/local/new/* ..
New file: <TESTBASE>/test/local/new/was_hardlink
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/was_hardlink <TESTBASE>/test/local/new/was_hardlink
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new/was_hardlink' '-'.
Inserted/updated <TESTBASE>/test/local/new/was_hardlink rows matched: 0
New file: <TESTBASE>/test/local/new/hardlinked_6
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_6 <TESTBASE>/test/local/new/hardlinked_6
<<<<<<< HEAD
1 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/new/hardlinked_6
=======
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_6
>>>>>>> 768622b8 (Filter dev:inode. Fix error code (wrong on macos))
check same file (32) <TESTBASE>/test/local/new/was_hardlink -> <TESTBASE>/test/local/new/hardlinked_6 
Found HARDLINK <TESTBASE>/test/local/new/was_hardlink -> <TESTBASE>/test/local/new/hardlinked_6 
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '<TESTBASE>/test/local/new/was_hardlink'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/was_hardlink' ''
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_6' '<TESTBASE>/test/local/new/was_hardlink'.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/was_hardlink' ''
Inserted/updated <TESTBASE>/test/local/new/hardlinked_6 rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
