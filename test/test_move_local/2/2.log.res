cmd c "move A Z => new Z " local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
New file: <TESTBASE>/test/local/Z
csync_check_file_same_dev_inode <TESTBASE>/test/local/Z <TESTBASE>/test/local/Z
1 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/Z
check same file (64) <TESTBASE>/test/local/A -> <TESTBASE>/test/local/Z 
Found MOVE <TESTBASE>/test/local/A -> <TESTBASE>/test/local/Z 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW->MV => NEW peer '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A' '<TESTBASE>/test/local/A'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/A' '<TESTBASE>/test/local/A'.
Inserted/updated <TESTBASE>/test/local/Z rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
