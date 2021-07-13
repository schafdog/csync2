cmd c "7 Check local (younger)" local peer test
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
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/* ..
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' '-'.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' '(null)'
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest (not synced) .
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' '-'.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
