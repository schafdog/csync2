cmd c "rm newdir (removed from dirty)" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' '(null)'
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' '(null)'
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/newdir' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' '(null)'
mark operation MKDIR -> RM peer:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/newdir' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
