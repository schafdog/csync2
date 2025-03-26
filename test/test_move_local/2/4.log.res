cmd c "move B newdir/C => new newdir/C" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C
1 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C
check same file (64) /export/home/dennis/Projects/csync2/csync2/test/test/local/B -> /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C 
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/B -> /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C 
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C' '/export/home/dennis/Projects/csync2/csync2/test/test/local/B'.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/B' ''
mark operation NEW->MV => NEW peer '/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C' '/export/home/dennis/Projects/csync2/csync2/test/test/local/B' '/export/home/dennis/Projects/csync2/csync2/test/test/local/B'.
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C' '/export/home/dennis/Projects/csync2/csync2/test/test/local/B'.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/B' ''
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C' '/export/home/dennis/Projects/csync2/csync2/test/test/local/B' '/export/home/dennis/Projects/csync2/csync2/test/test/local/B'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/C rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
