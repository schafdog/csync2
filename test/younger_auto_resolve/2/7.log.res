cmd c "7 Check local (younger)" local peer test
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
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/auto from <TESTBASE>/test/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto (not synced) .
Inserted/updated <TESTBASE>/test/local/auto rows matched: 1
Checking <TESTBASE>/test/local/auto/* ..
Calling check_mod on <TESTBASE>/test/local/auto/younger from <TESTBASE>/test/local/auto
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto/younger' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto/younger' '-'.
check_old_operation: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto/younger' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/younger (not synced) .
Inserted/updated <TESTBASE>/test/local/auto/younger rows matched: 1
Checking <TESTBASE>/test/local/auto/younger/* ..
Calling check_mod on <TESTBASE>/test/local/auto/younger/local_oldest from <TESTBASE>/test/local/auto/younger
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
check_old_operation: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/auto/younger/local_oldest' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/auto/younger/local_oldest (not synced) .
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
check_old_operation: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/auto/younger/local_oldest' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/younger/local_oldest (not synced) .
Inserted/updated <TESTBASE>/test/local/auto/younger/local_oldest rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
