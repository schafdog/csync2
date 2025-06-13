cmd c "7 Check local (older)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto (not synced) .
Inserted/updated <TESTBASE>/test/local/auto rows matched: 0
Checking <TESTBASE>/test/local/auto/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/auto/older' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/auto/older' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto/older' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/older (not synced) .
Inserted/updated <TESTBASE>/test/local/auto/older rows matched: 0
Checking <TESTBASE>/test/local/auto/older/* ..
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/auto/older/update_both' '-'.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/auto/older/update_both' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/auto/older/update_both (not synced) .
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/auto/older/update_both' '-'.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/auto/older/update_both' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/auto/older/update_both (not synced) .
Inserted/updated <TESTBASE>/test/local/auto/older/update_both rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
csync_file_args: '<TESTBASE>/test' flags 65 
