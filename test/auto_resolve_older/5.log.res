cmd c "5 Check local (autoresolve failed)" local peer test
Mode: 2 Flags: 1 PID: 903238
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           938bbc93130031c2e2ed4d0fbda2e0ef326c803f-dirty
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
/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older has changed: 
    v2:mtime=1626114719:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1615676400:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
0 files with same dev:inode (2065:52694325) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
