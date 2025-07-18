cmd c "New local/new_file" local peer test
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
New file: <TESTBASE>/test/local
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/new_file from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/new_file
csync_check_file_same_dev_inode <TESTBASE>/test/local/new_file <TESTBASE>/test/local/new_file
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file' '-'.
Inserted/updated <TESTBASE>/test/local/new_file rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
