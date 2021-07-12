cmd c "5 Check local (autoresolve failed)" local peer test
Mode: 2 Flags: 1 PID: 930971
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           25c08860acb2d832f423011a275b78941d04b0f5
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test 65 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/* ..
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
0 files with same dev:inode (2065:52694343) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
