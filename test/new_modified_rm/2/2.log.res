cmd c "modified A (but not synced) => new A" local peer test
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
Calling check_mod on <TESTBASE>/test/local/A from <TESTBASE>/test/local
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/A' '-'.
check_old_operation: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/A' '(null)'
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/A (not synced) .
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/A' '-'.
check_old_operation: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/A' '(null)'
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/A (not synced) .
Inserted/updated <TESTBASE>/test/local/A rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
