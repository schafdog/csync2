cmd c "modified A (but not synced) => new A" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '-'.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' ''
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/A (not synced) .
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '-'.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/A (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/A rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
