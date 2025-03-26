cmd c "modified newdir, but still new" local peer test
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
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '-'.
mark other: MOD_DIR(129) Old operation: MV(16) '/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '-'.
mark other: MOD_DIR(129) Old operation: MV(16) '/export/home/dennis/Projects/csync2/csync2/test/test/local/newdir' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
