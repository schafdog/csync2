cmd c "move Z B => new B " local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/B from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/B
csync_check_file_same_dev_inode <TESTBASE>/test/local/B <TESTBASE>/test/local/B
1 files with same dev:inode (16777232:0) as file: <TESTBASE>/test/local/B
check same file (64) <TESTBASE>/test/local/Z -> <TESTBASE>/test/local/B 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/local/Z, param2: local
Found MOVE <TESTBASE>/test/local/Z -> <TESTBASE>/test/local/B 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Z' ''
mark operation NEW->MV => NEW peer '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/Z'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Z' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/Z'.
Inserted/updated <TESTBASE>/test/local/B rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
