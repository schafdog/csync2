cmd c "rm newdir (removed from dirty)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Inserted/updated <TESTBASE>/test/local rows matched: 0
Checking <TESTBASE>/test/local/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/newdir' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' ''
mark operation MKDIR -> RM peer:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/newdir' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
csync_file_args: '<TESTBASE>/test' flags 65 
