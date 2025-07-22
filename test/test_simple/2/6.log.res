cmd x "clean up" local peer test/local
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test/local' flags 65 
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
check_mod: No such file '<TESTBASE>/test/local' .
Checking for deleted files <TESTBASE>/test/local recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/.Test' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/.Test' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/.Test' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/.Test deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/A' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/A' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/A deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
dirty: peer:<TESTBASE>/test/local/.Test v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/A v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Dirty (missing) item <TESTBASE>/test/local RM  0
Deleting peer:<TESTBASE>/test/local
CONN peer < STAT %25test%25 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
delete flags: 0
CONN peer < DEL %25test%25 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/local, param2: <TESTBASE>/test/local/%, param3: local
DELETE (<TESTBASE>/test/local) Last dir: <TESTBASE>/test/local/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/A RM  0
Skipping matched file (<TESTBASE>/test/local/A) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/new_file 'N' all RM  0
Skipping matched file (<TESTBASE>/test/local/new_file 'N' all) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/.Test RM  0
Skipping matched file (<TESTBASE>/test/local/.Test) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
