cmd c "modified A (but not synced) => new A" local peer test
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
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/A' '-'.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/A (not synced) .
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/A' '-'.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/A (not synced) .
Inserted/updated <TESTBASE>/test/local/A rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
