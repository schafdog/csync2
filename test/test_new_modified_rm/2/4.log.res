cmd c "modified newdir, but still new" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Checking <TESTBASE>/test/local/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/newdir' '-'.
mark other: MOD_DIR(129) Old operation: MV(16) '<TESTBASE>/test/local/newdir' '<TESTBASE>/test/local/A'
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/newdir' '-'.
mark other: MOD_DIR(129) Old operation: MV(16) '<TESTBASE>/test/local/newdir' '<TESTBASE>/test/local/A'
Inserted/updated <TESTBASE>/test/local/newdir rows matched: 0
Checking <TESTBASE>/test/local/newdir/* ..
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
