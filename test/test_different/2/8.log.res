cmd x "clean up" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/tmp' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/tmp' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/tmp' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/tmp deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/different' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/different' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/different' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/different deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/different v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Dirty (missing) item <TESTBASE>/test/local RM  0
Deleting peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 
CONN peer > 'OK (not_found).'
peer:<TESTBASE>/test/local is already up to date on peer.
Clear dirty peer:<TESTBASE>/test/local (0)
DELETE (<TESTBASE>/test/local) Last dir: <TESTBASE>/test/local/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/different RM  0
Skipping matched file (<TESTBASE>/test/local/different) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/tmp RM  0
Skipping matched file (<TESTBASE>/test/local/tmp) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
