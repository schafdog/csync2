cmd c "clean up" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/newdir/C' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/newdir/C' ''
mark operation NEW -> RM peer:<TESTBASE>/test/local/newdir/C deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/newdir/C' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/newdir/C' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/newdir/C deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/newdir' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' ''
mark operation MKDIR -> RM peer:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/newdir' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/newdir' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/newdir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM peer:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
