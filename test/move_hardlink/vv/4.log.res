cmd c "read (check)" local peer test
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
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
1 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
check same file (64) /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'.
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123' '(null)'
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
