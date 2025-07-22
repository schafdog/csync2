cmd x "clean up" local peer test/local
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2657575
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Running recursive check for <TESTBASE>/test/local ...
Checking recursive for modified files <TESTBASE>/test/local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_mod: No such file '<TESTBASE>/test/local' .
Checking for deleted files <TESTBASE>/test/local recursive.
file <TESTBASE>/test/local encoded <TESTBASE>/test/local. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/.Test' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/.Test') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/.Test'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/.Test', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091165, NULL, 64, 33188, 2, 1736899562)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/.Test' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/.Test') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/.Test' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/.Test deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/.Test' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/.Test'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/.Test'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new_file ''N'' all', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53091151, NULL, 64, 33188, 2, 1736899562)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/new_file 'N' all' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new_file ''N'' all'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/A' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/A') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/A'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/A', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091156, NULL, 64, 33188, 2, 1736899562)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/A' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/A') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/A deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/A' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/A'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/A'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091141, NULL, 64, 16877, 1, 1736899562)
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local'
csync_file_args: '<TESTBASE>/test/local' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/.Test' ''
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/.Test v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/new_file 'N' all' ''
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/A' ''
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/A v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Dirty (missing) item <TESTBASE>/test/local RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Deleting peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
delete flags: 0
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: --- 
<TESTBASE>/test/local is different on peer (cktxt char #1).
>>> PEER:  v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL: ---
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  hostname = 'local'
DELETE (<TESTBASE>/test/local) Last dir: <TESTBASE>/test/local/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/A RM  0
Skipping matched file (<TESTBASE>/test/local/A) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/new_file 'N' all RM  0
Skipping matched file (<TESTBASE>/test/local/new_file 'N' all) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/.Test RM  0
Skipping matched file (<TESTBASE>/test/local/.Test) from deleted directory (<TESTBASE>/test/local/)
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
