cmd x "clean up" local
Config-File:   csync2_local.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/local'.
New host alias: peer: localhost 30860
New host alias: local: localhost 30860
New group: test
New group:host: test peer
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group: first
New group:host: first peer
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger peer
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older peer
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger peer
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller peer
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left peer
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right peer
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action peer
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           77e66fccc936ab7187cd339178f3060995b42233-dirty
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
SQL: show tables like 'file'
SQL Query finished.
db_schema_version: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test/local ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test/local 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/local' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/local recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test/local encoded /export/home/dennis/Projects/csync2/csync2/test/test/local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file  WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/%'  ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1476371172:mode=33188:user=dennis:group=schafroth:type=reg:size=11' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change') AND device = 2065 AND inode  = 817323655 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change', 0, 'local', 'peer', 'RM', 'v2:mtime=1476371172:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2065, 817323655, NULL, 64, 33188)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1476371172:mode=33188:user=dennis:group=schafroth:type=reg:size=11' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change') AND device = 2065 AND inode  = 817323655 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MOD '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '(null)'
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change', 0, 'local', 'other', 'RM', 'v2:mtime=1476371172:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2065, 817323655, NULL, 64, 33188)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1476371172:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 2065 AND inode  = 817323652 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'RM', 'v2:mtime=1476371172:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 817323652, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1476371172:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 2065 AND inode  = 817323652 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test/local' flags 65 
get dirty host
SQL: SELECT peername FROM dirty GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by op DESC, filename DESC
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test/local
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test/local
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local 1
SQL Query finished.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change RM (null) 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
CONN peer < SIG %25test%25/type_change 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1476371172%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=11'
csync_cmpchecktxt A: v2:mtime=1476371172:mode=33188:user=dennis:group=schafroth:type=reg:size=11 
csync_cmpchecktxt B: v2:mtime=1476371172:mode=33188:user=dennis:group=schafroth:type=reg:size=11 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1476371172:mode=33188:user=dennis:group=schafroth:type=reg:size=11
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
rs_check: Signature size differs: local=0, peer=32
rs_check: Receiving signature 32 bytes ..
rs_check: Found EOF in local sig file (/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change) before reading chuck (32) .
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/type_change 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1476371172%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1476371172:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1476371172:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1476371172:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
rs_check: Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/test/test/local.
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Closing db: 0x6e4d90
Closed db: 0x6e4d90
Finished succesfully.
