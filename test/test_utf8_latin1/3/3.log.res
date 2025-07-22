cmd x "New local/ÆØÅ Café with utf8 and latin1 (removed)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2658784
Config-File:   csync2_pgsql_local.cfg
Prefix 'test' is set to '<TESTBASE>/test/local'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test peer
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
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
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 65 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/ÆØÅ Café.utf8
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/ÆØÅ Café.utf8
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/ÆØÅ Café.utf8') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/ÆØÅ Café.utf8'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/ÆØÅ Café.utf8', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53346947, NULL, 64, 33188, 2, 1736899580)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/ÆØÅ Café.utf8' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/ÆØÅ Café.utf8') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/ÆØÅ Café.utf8' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/ÆØÅ Café.utf8 deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/ÆØÅ Café.utf8' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/ÆØÅ Café.utf8'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/ÆØÅ Café.utf8'
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/ÆØÅ Café.utf8' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/ÆØÅ Café.utf8 v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
SQL Query finished.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Dirty (missing) item <TESTBASE>/test/local/ÆØÅ Café.utf8 RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/ÆØÅ Café.utf8
Deleting peer:<TESTBASE>/test/local/ÆØÅ Café.utf8
CONN peer < SIG %25test%25/ÆØÅ%20Café.utf8 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4'
delete flags: 0
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
csync_cmpchecktxt B: --- 
<TESTBASE>/test/local/ÆØÅ Café.utf8 is different on peer (cktxt char #1).
>>> PEER:  v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4
>>> LOCAL: ---
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/ÆØÅ Café.utf8
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/ÆØÅ Café.utf8', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Signature size differs: local=0, peer=32
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/ÆØÅ Café.utf8
rs_check: Found EOF in local sig file (<TESTBASE>/test/local/ÆØÅ Café.utf8) before reading chuck (32) .
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/ÆØÅ%20Café.utf8 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:<TESTBASE>/test/local/ÆØÅ Café.utf8 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/ÆØÅ Café.utf8'  AND  myname = 'local' AND peername like 'peer'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: <PTR>
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: <PTR>
Closed db: <PTR>
Closed db: <PTR>
csync_config_destroy
csync_config_destroy end
