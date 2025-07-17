cmd c "5 Check local (autoresolve failed)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
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
Calling check_mod on <TESTBASE>/test/local/auto from <TESTBASE>/test/local
Checking <TESTBASE>/test/local/auto/* ..
Calling check_mod on <TESTBASE>/test/local/auto/younger from <TESTBASE>/test/local/auto
Checking <TESTBASE>/test/local/auto/younger/* ..
Calling check_mod on <TESTBASE>/test/local/auto/younger/local_oldest from <TESTBASE>/test/local/auto/younger
New file: <TESTBASE>/test/local/auto/younger/local_oldest
csync_check_file_same_dev_inode <TESTBASE>/test/local/auto/younger/local_oldest <TESTBASE>/test/local/auto/younger/local_oldest
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/auto/younger/local_oldest' '-'.
Inserted/updated <TESTBASE>/test/local/auto/younger/local_oldest rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
