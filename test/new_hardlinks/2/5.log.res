cmd cI "5 more files hardlinked (mark)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 69 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
No match. Don't check at all: <TESTBASE>/test/peer
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/new from <TESTBASE>/test/local
Inserted/updated <TESTBASE>/test/local/new rows matched: 1
Checking <TESTBASE>/test/local/new/* ..
Calling check_mod on <TESTBASE>/test/local/new/new_file from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_5 from <TESTBASE>/test/local/new
New file: <TESTBASE>/test/local/new/hardlinked_5
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_5 <TESTBASE>/test/local/new/hardlinked_5
4 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/new/hardlinked_5
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5 
check same file (32) <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_5 
check same file (32) <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_5 
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_5 
Inserted/updated <TESTBASE>/test/local/new/hardlinked_5 rows matched: 1
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_4 from <TESTBASE>/test/local/new
New file: <TESTBASE>/test/local/new/hardlinked_4
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_4 <TESTBASE>/test/local/new/hardlinked_4
5 files with same dev:inode (2049:0) as file: <TESTBASE>/test/local/new/hardlinked_4
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked_5 -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_5 -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_2 -> <TESTBASE>/test/local/new/hardlinked_4 
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_4 
Inserted/updated <TESTBASE>/test/local/new/hardlinked_4 rows matched: 1
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_3 from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked_2 from <TESTBASE>/test/local/new
Calling check_mod on <TESTBASE>/test/local/new/hardlinked from <TESTBASE>/test/local/new
Checking for deleted files <TESTBASE>/test recursive.
