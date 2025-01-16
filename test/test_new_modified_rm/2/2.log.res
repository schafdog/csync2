cmd c "modified A (but not synced) => new A" local peer test
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
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '-'.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '(null)'
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/A (not synced) .
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '-'.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/A (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/A rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
