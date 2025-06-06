cmd c "5 Check local (autoresolve failed)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
