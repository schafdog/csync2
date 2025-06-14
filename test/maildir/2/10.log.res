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
No match. Don't check at all: <TESTBASE>/test/peer
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/tmp' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/tmp deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/new' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/new deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/.Trash/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/.Trash deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
csync_file_args: '<TESTBASE>/test' flags 65 
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
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
Dirty (missing) item <TESTBASE>/test/local/Maildir RM  0
Skipping matched file (<TESTBASE>/test/local/Maildir) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/.Trash RM  0
Skipping matched file (<TESTBASE>/test/local/Maildir/.Trash) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/.Trash/cur RM  0
Skipping matched file (<TESTBASE>/test/local/Maildir/.Trash/cur) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/cur RM  0
Skipping matched file (<TESTBASE>/test/local/Maildir/cur) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/new RM  0
Skipping matched file (<TESTBASE>/test/local/Maildir/new) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/tmp RM  0
Skipping matched file (<TESTBASE>/test/local/Maildir/tmp) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
