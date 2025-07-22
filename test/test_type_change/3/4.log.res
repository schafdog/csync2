cmd x "4 Directory to file (type change)" local peer test/local
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2657935
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
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 65
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53346620, NULL, 129, 16877, 1, 1736899567)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Found row: file '<TESTBASE>/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53346620, NULL, 1, 16877, 1, 1736899567)
INSERT/UPDATE: <TESTBASE>/test/local 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device=2049, inode=53346620,                 digest='', mode=16877, mtime=1736899567, size=4096, type=1 where filename = '<TESTBASE>/test/local'
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/type_change' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
File <TESTBASE>/test/local/type_change has changed mode 16384 => 32768 
<TESTBASE>/test/local/type_change has changed: 
    v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir NEW
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 1 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/type_change' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/type_change') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/type_change'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/type_change', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9', 2049, 53346621, NULL, 258, 33188, 2, 1736899567)
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/type_change' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/type_change') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD(258) Old operation: MOD(1) '<TESTBASE>/test/local/type_change' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/type_change (not synced) .
Found row: file '<TESTBASE>/test/local/type_change' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/type_change'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/type_change', 0, 'local', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9', 2049, 53346621, NULL, 1, 33188, 2, 1736899567)
INSERT/UPDATE: <TESTBASE>/test/local/type_change 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9', device=2049, inode=53346621,                 digest='', mode=33188, mtime=1736899567, size=9, type=2 where filename = '<TESTBASE>/test/local/type_change'
Inserted/updated <TESTBASE>/test/local/type_change rows matched: 0
Checking for deleted files <TESTBASE>/test/local recursive.
file <TESTBASE>/test/local encoded <TESTBASE>/test/local. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change
check_pure: filename: '<TESTBASE>/test/local/type_change' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change/new_file 'N' all
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change/new_file 'N' all
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/type_change/new_file ''N'' all', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53346622, NULL, 64, 33188, 2, 1736899567)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/type_change/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/type_change/new_file 'N' all' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/type_change/new_file 'N' all deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/type_change/new_file 'N' all' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all'
csync_file_args: '<TESTBASE>/test/local' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/type_change/new_file 'N' all' ''
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/type_change/new_file 'N' all v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/type_change' ''
compare file with pattern <TESTBASE>/test/local
dirty: peer:<TESTBASE>/test/local/type_change v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9 ''
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
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '<TESTBASE>/test/local/' 59, 53.
Locking '<TESTBASE>/test/local'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local 1736899567
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Continue to rs_check <TESTBASE>/test/local 16
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
?M: peer            <TESTBASE>/test/local
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local' on DIFF_META
CONN peer < MOD %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local'
Redis Reply: DEL '<TESTBASE>/test/local' -> 1
Directory <TESTBASE>/test
Adding textlist_add_new: <TESTBASE>/test
Skipping textlist_add_new: <TESTBASE>/test
check_pure: filename: '<TESTBASE>/test/local/type_change' 59, cached path: '<TESTBASE>/test/' 53, 53.
Locking '<TESTBASE>/test/local/type_change'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/type_change 1736899567
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change
uid dennis gid schafroth
Updating (MOD) 'peer:<TESTBASE>/test/local/type_change' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/type_change
CONN peer < SIG %25test%25/type_change user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/type_change RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9 
<TESTBASE>/test/local/type_change is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change
Continue to rs_check <TESTBASE>/test/local/type_change 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/type_change', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Signature size differs: local=32, peer=0
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/type_change
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?B: peer            <TESTBASE>/test/local/type_change
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/type_change
has links: file <TESTBASE>/test/local/type_change checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=9' 1 1
CONN peer < PATCH %25test%25/type_change - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/type_change')
Receiving sig_file from peer..
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
Receiving 12 bytes (chunked)..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 15 bytes
CONN peer < octet-stream 15

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 24.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/type_change (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/type_change'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/type_change'
Redis Reply: DEL '<TESTBASE>/test/local/type_change' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Dirty (missing) item <TESTBASE>/test/local/type_change/new_file 'N' all RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/type_change/new_file 'N' all
Deleting peer:<TESTBASE>/test/local/type_change/new_file 'N' all
CONN peer < SIG %25test%25/type_change/new_file%20%27N%27%20all 
CONN peer > 'ERROR (Path not found): %25test%25/type_change'
read_conn_status '%25test%25/type_change' -13
peer:<TESTBASE>/test/local/type_change/new_file 'N' all is already up to date on peer.
Clear dirty peer:<TESTBASE>/test/local/type_change/new_file 'N' all (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all' OR filename LIKE '<TESTBASE>/test/local/type_change/new_file ''N'' all/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/local/type_change/new_file ''N'' all' OR filename LIKE '<TESTBASE>/test/local/type_change/new_file ''N'' all/%')  AND  hostname = 'local'
DELETE (<TESTBASE>/test/local/type_change/new_file 'N' all) Last dir: <TESTBASE>/test/local/type_change/new_file 'N' all/. rc: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1736899567.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
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
