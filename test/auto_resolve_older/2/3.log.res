cmd c "3 create directories (check)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
New file: <TESTBASE>/test/local
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
New file: <TESTBASE>/test/local/auto
csync_check_file_same_dev_inode <TESTBASE>/test/local/auto <TESTBASE>/test/local/auto
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/auto' '-'.
Inserted/updated <TESTBASE>/test/local/auto rows matched: 0
Checking <TESTBASE>/test/local/auto/* ..
New file: <TESTBASE>/test/local/auto/older
csync_check_file_same_dev_inode <TESTBASE>/test/local/auto/older <TESTBASE>/test/local/auto/older
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/auto/older' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/auto/older' '-'.
Inserted/updated <TESTBASE>/test/local/auto/older rows matched: 0
Checking <TESTBASE>/test/local/auto/older/* ..
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
