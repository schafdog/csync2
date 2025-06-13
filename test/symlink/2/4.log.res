cmd x "Clean up" local peer test
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
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all.link' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all.link' '-'.
mark other: RM(64) Old operation: LINK(2) '<TESTBASE>/test/local/new_file 'N' all.link' 'new_file 'N' all'
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/bad.link' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/bad.link' '-'.
mark other: RM(64) Old operation: LINK(2) '<TESTBASE>/test/local/bad.link' 'missing'
mark operation NEW -> RM other:<TESTBASE>/test/local/bad.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/new_file 'N' all.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file 'N' all ''
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/bad.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing ''
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
Dirty (missing) item <TESTBASE>/test/local/bad.link RM  0
Deleting peer:<TESTBASE>/test/local/bad.link
CONN peer < STAT %25test%25/bad.link 
CONN peer > 'IDENT (cmd_finished).'
DELETE (<TESTBASE>/test/local/bad.link) Last dir: <TESTBASE>/test/local/bad.link/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/new_file 'N' all RM  0
Deleting peer:<TESTBASE>/test/local/new_file 'N' all
CONN peer < STAT %25test%25/new_file%20%27N%27%20all 
CONN peer > 'ERROR (Path not found): %25test%25'
peer:<TESTBASE>/test/local/new_file 'N' all is already up to date on peer.
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all (0)
DELETE (<TESTBASE>/test/local/new_file 'N' all) Last dir: <TESTBASE>/test/local/new_file 'N' all/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/new_file 'N' all.link RM  0
Deleting peer:<TESTBASE>/test/local/new_file 'N' all.link
CONN peer < STAT %25test%25/new_file%20%27N%27%20all.link 
CONN peer > 'ERROR (Path not found): %25test%25'
peer:<TESTBASE>/test/local/new_file 'N' all.link is already up to date on peer.
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all.link (0)
DELETE (<TESTBASE>/test/local/new_file 'N' all.link) Last dir: <TESTBASE>/test/local/new_file 'N' all.link/. rc: 4
CONN peer < BYE

CONN peer > 'ERROR (Path not found): %25test%25'
