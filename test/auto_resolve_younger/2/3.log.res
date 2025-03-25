cmd c "3 create directories (check)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/auto /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
