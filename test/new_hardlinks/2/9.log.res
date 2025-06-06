cmd c "9 hardlinked when checked" local peer test
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
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/new/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink rows matched: 0
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
1 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' ''
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' ''
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
