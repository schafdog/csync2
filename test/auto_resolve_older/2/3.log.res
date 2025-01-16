cmd c "3 create directories (check)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local (null)
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto (null)
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '-'.
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older (null)
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
