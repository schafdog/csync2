cmd x "6 Directory to file (type change)" local peer test/local
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test/local ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test/local 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
File /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change has changed mode 16384 => 32768 
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
mark other: MOD(258) Old operation: MOD(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/local recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
mark other: RM(64) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' ''
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all deleted before syncing. Removing from dirty.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test/local' flags 65 
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=11 ''
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
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
/export/home/dennis/Projects/csync2/csync2/test/test/local is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < MOD %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (MOD) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
CONN peer < SIG %25test%25/type_change user/group 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=11
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Signature size differs: local=32, peer=0
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
CONN peer < PATCH %25test%25/type_change - 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (sending sig).'
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
CONN peer < octet-stream 17

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change (0)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all RM  0
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
CONN peer < SIG %25test%25/type_change/new_file%20%27N%27%20all 
CONN peer > 'ERROR (Path not found): %25test%25/type_change'
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all (0)
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all/. rc: 4
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
