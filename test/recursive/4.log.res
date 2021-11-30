cmd x "4. rm directory with ignore files" local peer test
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
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other: RM(64) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '(null)'
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive deleted before syncing. Removing from dirty.
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
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1638282877 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-2).
>>> peer:	v2:mtime=1638282875:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1638282877:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < MOD %25test%25 - 1234 1000 dennis schafroth 16877 - 1638282877 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive RM (null) 0
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
CONN peer < SIG %25test%25/recursive 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
delete flags: 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
CONN peer > 'OK (cmd_finished).'
CONN peer < DEL %25test%25/recursive 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive (0)
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c RM (null) 0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
