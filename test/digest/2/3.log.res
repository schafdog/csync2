cmd x "New local/no_permission" local peer test
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
Calling check_mod on <TESTBASE>/test/local/A from <TESTBASE>/test/local
Inserted/updated <TESTBASE>/test/local/A rows matched: 1
Calling check_mod on <TESTBASE>/test/local/.Test from <TESTBASE>/test/local
Inserted/updated <TESTBASE>/test/local/.Test rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
