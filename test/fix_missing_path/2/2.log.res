cmd cI "2. New local/recursive/.. -I" local peer test
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
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
New file: <TESTBASE>/test/local/recursive
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive <TESTBASE>/test/local/recursive
Inserted/updated <TESTBASE>/test/local/recursive rows matched: 0
Checking <TESTBASE>/test/local/recursive/* ..
New file: <TESTBASE>/test/local/recursive/1
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1 <TESTBASE>/test/local/recursive/1
Inserted/updated <TESTBASE>/test/local/recursive/1 rows matched: 0
Checking <TESTBASE>/test/local/recursive/1/* ..
New file: <TESTBASE>/test/local/recursive/1/2
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2 <TESTBASE>/test/local/recursive/1/2
Inserted/updated <TESTBASE>/test/local/recursive/1/2 rows matched: 0
Checking <TESTBASE>/test/local/recursive/1/2/* ..
New file: <TESTBASE>/test/local/recursive/1/2/3
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3 <TESTBASE>/test/local/recursive/1/2/3
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3 rows matched: 0
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
New file: <TESTBASE>/test/local/recursive/1/2/3/4
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4 <TESTBASE>/test/local/recursive/1/2/3/4
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4 rows matched: 0
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5 <TESTBASE>/test/local/recursive/1/2/3/4/5
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 0
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 69 
