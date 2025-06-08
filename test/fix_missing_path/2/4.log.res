cmd x "4. clean up" local peer test
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
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive' '-'.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=11 ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
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
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Dirty (missing) item <TESTBASE>/test/local/recursive RM  0
Deleting peer:<TESTBASE>/test/local/recursive
CONN peer < STAT %25test%25/recursive 
CONN peer > 'IDENT (cmd_finished).'
DELETE (<TESTBASE>/test/local/recursive) Last dir: <TESTBASE>/test/local/recursive/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/recursive/1 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5) from deleted directory (<TESTBASE>/test/local/recursive/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c) from deleted directory (<TESTBASE>/test/local/recursive/)
CONN peer < BYE

CONN peer > 'ERROR (Path not found): %25test%25'
