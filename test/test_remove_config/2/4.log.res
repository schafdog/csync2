cmd c "clean up" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' '(null)'
mark operation MKDIR -> RM peer:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
