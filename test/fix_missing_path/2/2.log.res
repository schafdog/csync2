cmd cI "2. New local/recursive/.. -I" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 69 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
New file: <TESTBASE>/test/local
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
Inserted/updated <TESTBASE>/test/local rows matched: 1
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/recursive from <TESTBASE>/test/local
New file: <TESTBASE>/test/local/recursive
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive <TESTBASE>/test/local/recursive
Inserted/updated <TESTBASE>/test/local/recursive rows matched: 1
Checking <TESTBASE>/test/local/recursive/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1 from <TESTBASE>/test/local/recursive
New file: <TESTBASE>/test/local/recursive/1
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1 <TESTBASE>/test/local/recursive/1
Inserted/updated <TESTBASE>/test/local/recursive/1 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2 from <TESTBASE>/test/local/recursive/1
New file: <TESTBASE>/test/local/recursive/1/2
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2 <TESTBASE>/test/local/recursive/1/2
Inserted/updated <TESTBASE>/test/local/recursive/1/2 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3 from <TESTBASE>/test/local/recursive/1/2
New file: <TESTBASE>/test/local/recursive/1/2/3
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3 <TESTBASE>/test/local/recursive/1/2/3
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4 from <TESTBASE>/test/local/recursive/1/2/3
New file: <TESTBASE>/test/local/recursive/1/2/3/4
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4 <TESTBASE>/test/local/recursive/1/2/3/4
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4/5 from <TESTBASE>/test/local/recursive/1/2/3/4
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5 <TESTBASE>/test/local/recursive/1/2/3/4/5
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 1
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
Checking for deleted files <TESTBASE>/test recursive.
