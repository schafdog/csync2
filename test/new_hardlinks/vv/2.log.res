cmd c "2 two new files hardlinked (check)" local peer test
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/new/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file rows matched: 1
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
1 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
