cmd c "5 Check local (autoresolve failed)" local peer test
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test 65 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/* ..
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
0 files with same dev:inode (2065:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
