cmd x "4. clean up" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
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
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11 ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1/2 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive/1 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/recursive v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Dirty (missing) item <TESTBASE>/test/local/recursive RM  0
Skipping matched file (<TESTBASE>/test/local/recursive) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
