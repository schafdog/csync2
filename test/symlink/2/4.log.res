cmd x "Clean up" local peer test
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
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' '-'.
mark other: RM(64) Old operation: LINK(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' 'new_file 'N' all'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
mark other: RM(64) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' ''
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' '-'.
mark other: RM(64) Old operation: LINK(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' 'missing'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file 'N' all ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link v2:mtime=xxxxxxxxxx:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing ''
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
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
