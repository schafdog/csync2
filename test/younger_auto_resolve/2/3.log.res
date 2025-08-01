cmd c "3 create directories (check)" local peer test
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
New file: <TESTBASE>/test/local
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/auto from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/auto
csync_check_file_same_dev_inode <TESTBASE>/test/local/auto <TESTBASE>/test/local/auto
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/auto' '-'.
Inserted/updated <TESTBASE>/test/local/auto rows matched: 1
Checking <TESTBASE>/test/local/auto/* ..
Calling check_mod on <TESTBASE>/test/local/auto/younger from <TESTBASE>/test/local/auto
New file: <TESTBASE>/test/local/auto/younger
csync_check_file_same_dev_inode <TESTBASE>/test/local/auto/younger <TESTBASE>/test/local/auto/younger
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/auto/younger' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/auto/younger' '-'.
Inserted/updated <TESTBASE>/test/local/auto/younger rows matched: 1
Checking <TESTBASE>/test/local/auto/younger/* ..
Checking for deleted files <TESTBASE>/test recursive.
