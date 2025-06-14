cmd x "9 clean (older)" local peer test
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
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/auto/older/update_both' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/auto/older/update_both' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/auto/older/update_both' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/auto/older/update_both deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/auto/older' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/auto/older' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto/older' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/auto/older deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/auto' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/auto' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/auto' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/auto deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/auto/older/update_both v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=14 ''
dirty: peer:<TESTBASE>/test/local/auto/older v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/auto v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Using alternative port to localhost:30861 
Connecting to localhost:30861 
Using specific address 127.0.0.2
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
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
delete flags: 0
CONN peer < DEL %25test%25 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
DELETE (<TESTBASE>/test/local) Last dir: <TESTBASE>/test/local/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/auto RM  0
Skipping matched file (<TESTBASE>/test/local/auto) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/auto/older RM  0
Skipping matched file (<TESTBASE>/test/local/auto/older) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/auto/older/update_both RM  0
Skipping matched file (<TESTBASE>/test/local/auto/older/update_both) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
