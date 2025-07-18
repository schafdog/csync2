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
Calling check_mod on <TESTBASE>/test/local/auto/older from <TESTBASE>/test/local/auto
Checking <TESTBASE>/test/local/auto/older/* ..
Calling check_mod on <TESTBASE>/test/local/auto/older/update_both from <TESTBASE>/test/local/auto/older
New file: <TESTBASE>/test/local/auto/older/update_both
csync_check_file_same_dev_inode <TESTBASE>/test/local/auto/older/update_both <TESTBASE>/test/local/auto/older/update_both
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/auto/older/update_both' '-'.
Inserted/updated <TESTBASE>/test/local/auto/older/update_both rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
