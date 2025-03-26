cmd x "4. clean up" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other: RM(64) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' ''
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
WARN: operation changed: MKDIR(1) => MKDIR(129)
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' ''
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=11 ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local RM  0
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
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
