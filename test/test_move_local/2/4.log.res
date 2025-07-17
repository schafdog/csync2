cmd c "move B newdir/C => new newdir/C" local peer test
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
Calling check_mod on <TESTBASE>/test/local/newdir from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/newdir
csync_check_file_same_dev_inode <TESTBASE>/test/local/newdir <TESTBASE>/test/local/newdir
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/newdir' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/newdir' '-'.
Inserted/updated <TESTBASE>/test/local/newdir rows matched: 1
Checking <TESTBASE>/test/local/newdir/* ..
Calling check_mod on <TESTBASE>/test/local/newdir/C from <TESTBASE>/test/local/newdir
New file: <TESTBASE>/test/local/newdir/C
csync_check_file_same_dev_inode <TESTBASE>/test/local/newdir/C <TESTBASE>/test/local/newdir/C
1 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/newdir/C
check same file (64) <TESTBASE>/test/local/B -> <TESTBASE>/test/local/newdir/C 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/local/B, param2: local
Found MOVE <TESTBASE>/test/local/B -> <TESTBASE>/test/local/newdir/C 
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/B' ''
mark operation NEW->MV => NEW peer '<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/B'.
mark other operation: 'MV' 'other:<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B'.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/B' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/newdir/C' '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/B'.
Inserted/updated <TESTBASE>/test/local/newdir/C rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
