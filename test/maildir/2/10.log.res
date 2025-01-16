cmd x "clean up" local peer test
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local RM (null) 0
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
delete flags: 0
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer > 'OK (cmd_finished).'
CONN peer < DEL %25test%25 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
