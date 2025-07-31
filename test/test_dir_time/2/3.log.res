cmd c "New dir timestamp due to file (check)" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
No match. Don't check at all: <TESTBASE>/test/peer
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/usr from <TESTBASE>/test/local
Checking <TESTBASE>/test/local/usr/* ..
Calling check_mod on <TESTBASE>/test/local/usr/local from <TESTBASE>/test/local/usr
Checking <TESTBASE>/test/local/usr/local/* ..
Calling check_mod on <TESTBASE>/test/local/usr/local/sbin from <TESTBASE>/test/local/usr/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/usr/local/sbin' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/usr/local/sbin (not synced) .
Inserted/updated <TESTBASE>/test/local/usr/local/sbin rows matched: 1
Checking <TESTBASE>/test/local/usr/local/sbin/* ..
Checking for deleted files <TESTBASE>/test recursive.
