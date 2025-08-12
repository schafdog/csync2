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
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/tmp 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/tmp) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/tmp found false
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/tmp 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/tmp) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/tmp MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/tmp found true
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/tmp' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/tmp deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/new 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/new) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/new found false
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/new 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/new) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/new MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/new found true
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/new' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/new deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/cur found false
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/cur) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/cur MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/cur found true
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash/cur found false
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash/cur) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/.Trash/cur MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash/cur found true
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/.Trash/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir/.Trash found false
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir/.Trash) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir/.Trash MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir/.Trash found true
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir/.Trash deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/Maildir' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local/Maildir found false
mark other operation: 'RM' 'other:<TESTBASE>/test/local/Maildir' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local/Maildir) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local/Maildir MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local/Maildir found true
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/Maildir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
csync_mark_other: Before check_old peer:<TESTBASE>/test/local 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local) AND peername = peer ORDER BY timestamp 
csync_mark_other: Before check_old peer:<TESTBASE>/test/local found false
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
csync_mark_other: Before check_old other:<TESTBASE>/test/local 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = local AND (checktxt = v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir AND device = <DEV> AND inode = <INODE>  OR filename = <TESTBASE>/test/local) AND peername = other ORDER BY timestamp 
db->get_old_operation: FOUND <TESTBASE>/test/local MKDIR
csync_mark_other: Before check_old other:<TESTBASE>/test/local found true
check_old_operation: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
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
