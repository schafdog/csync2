cmd x "New file deleted" local peer test
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
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '-'.
mark other: RM(64) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej deleted before syncing. Removing from dirty.
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
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
CONN peer < SIG %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=1733504303:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1733504304:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
CONN peer < MOD %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin (0)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej RM (null) 0
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
CONN peer < SIG %25test%25/usr/local/sbin/hej 
CONN peer > 'OK (data_follows).'
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
delete flags: 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej', 0 [non-regular file])
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Signature size differs: local=0, peer=32
rs_check: Found EOF in local sig file (/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej) before reading chuck (32) .
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
CONN peer < DEL %25test%25/usr/local/sbin/hej 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej (0)
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
