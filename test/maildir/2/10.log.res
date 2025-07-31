cmd x "clean up" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
No match. Don't check at all: <TESTBASE>/test/peer
Checking for deleted files <TESTBASE>/test recursive.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/tmp' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/tmp deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/new' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/new deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/.Trash/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/.Trash deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' '(null)'
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Dirty (missing) item <TESTBASE>/test/local RM NULL 0
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
Dirty (missing) item <TESTBASE>/test/local/Maildir RM NULL 0
Skipping matched file (<TESTBASE>/test/local/Maildir) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/.Trash RM NULL 0
Skipping matched file (<TESTBASE>/test/local/Maildir/.Trash) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/.Trash/cur RM NULL 0
Skipping matched file (<TESTBASE>/test/local/Maildir/.Trash/cur) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/cur RM NULL 0
Skipping matched file (<TESTBASE>/test/local/Maildir/cur) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/new RM NULL 0
Skipping matched file (<TESTBASE>/test/local/Maildir/new) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/Maildir/tmp RM NULL 0
Skipping matched file (<TESTBASE>/test/local/Maildir/tmp) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
