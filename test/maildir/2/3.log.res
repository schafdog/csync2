cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local peer test
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
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
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
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
CONN peer < SIG %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer < MOD %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
CONN peer < SIG %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < MOD %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
CONN peer < SIG %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 RC 32
CONN peer < PATCH %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (sending sig).'
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
CONN peer < octet-stream 14
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
