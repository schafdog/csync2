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
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/type_change/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/type_change/new_file 'N' all deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/type_change' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/type_change' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/type_change' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/type_change deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM peer:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
dirty: peer:<TESTBASE>/test/local/type_change/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/type_change v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Dirty (missing) item <TESTBASE>/test/local/type_change RM  0
Deleting peer:<TESTBASE>/test/local/type_change
CONN peer < STAT %25test%25/type_change 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
delete flags: 0
CONN peer < DEL %25test%25/type_change 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/type_change (0)
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/local/type_change, param2: <TESTBASE>/test/local/type_change/%, param3: local
DELETE (<TESTBASE>/test/local/type_change) Last dir: <TESTBASE>/test/local/type_change/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/type_change/new_file 'N' all RM  0
Skipping matched file (<TESTBASE>/test/local/type_change/new_file 'N' all) from deleted directory (<TESTBASE>/test/local/type_change/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
