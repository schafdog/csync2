cmd c "modified newdir, but still new" local peer test
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
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/newdir from <TESTBASE>/test/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/newdir' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' '(null)'
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/newdir (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/newdir' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' '(null)'
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/newdir (not synced) .
Inserted/updated <TESTBASE>/test/local/newdir rows matched: 1
Checking <TESTBASE>/test/local/newdir/* ..
Checking for deleted files <TESTBASE>/test recursive.
