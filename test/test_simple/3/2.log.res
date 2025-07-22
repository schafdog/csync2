cmd x "New local/new_file 'N' all" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2657503
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
New file: <TESTBASE>/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091141, NULL, 1, 16877, 1, 1736899562)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091141, NULL, 1, 16877, 1, 1736899562)
INSERT/UPDATE: <TESTBASE>/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091141, NULL, 16877, 4096, 1736899562, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091141, digest = NULL, mode = 16877, size = 4096, mtime = 1736899562, type = 1
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new_file ''N'' all' 
New file: <TESTBASE>/test/local/new_file 'N' all
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new_file 'N' all <TESTBASE>/test/local/new_file ''N'' all
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53091151  AND filename != '<TESTBASE>/test/local/new_file ''N'' all' 
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new_file ''N'' all', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53091151, NULL, 2, 33188, 2, 1736899562)
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file ''N'' all') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new_file ''N'' all', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53091151, NULL, 2, 33188, 2, 1736899562)
INSERT/UPDATE: <TESTBASE>/test/local/new_file ''N'' all eeb4df3d04063049b45ea11a12354a37e8740687
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/new_file ''N'' all', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53091151, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899562, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device = 2049, inode = 53091151, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899562, type = 2
Inserted/updated <TESTBASE>/test/local/new_file 'N' all rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/A' 
New file: <TESTBASE>/test/local/A
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/A <TESTBASE>/test/local/A
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53091156  AND filename != '<TESTBASE>/test/local/A' 
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/A' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/A') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/A'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/A', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091156, NULL, 2, 33188, 2, 1736899562)
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/A' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/A') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/A'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/A', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091156, NULL, 2, 33188, 2, 1736899562)
INSERT/UPDATE: <TESTBASE>/test/local/A da39a3ee5e6b4b0d3255bfef95601890afd80709
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/A', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091156, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 33188, 0, 1736899562, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', device = 2049, inode = 53091156, digest = 'da39a3ee5e6b4b0d3255bfef95601890afd80709', mode = 33188, size = 0, mtime = 1736899562, type = 2
Inserted/updated <TESTBASE>/test/local/A rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/.Test' 
New file: <TESTBASE>/test/local/.Test
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/.Test <TESTBASE>/test/local/.Test
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53091165  AND filename != '<TESTBASE>/test/local/.Test' 
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/.Test' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/.Test') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/.Test'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/.Test', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091165, NULL, 2, 33188, 2, 1736899562)
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/.Test' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/.Test') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/.Test'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/.Test', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091165, NULL, 2, 33188, 2, 1736899562)
INSERT/UPDATE: <TESTBASE>/test/local/.Test da39a3ee5e6b4b0d3255bfef95601890afd80709
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/.Test', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53091165, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 33188, 0, 1736899562, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', device = 2049, inode = 53091165, digest = 'da39a3ee5e6b4b0d3255bfef95601890afd80709', mode = 33188, size = 0, mtime = 1736899562, type = 2
Inserted/updated <TESTBASE>/test/local/.Test rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
check_pure: filename: '<TESTBASE>/test/local/A' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
check_pure: filename: '<TESTBASE>/test/local/new_file 'N' all' 59, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
check_pure: filename: '<TESTBASE>/test/local/.Test' 59, cached path: '<TESTBASE>/test/local/' 59, 59.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/.Test' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/.Test v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/new_file 'N' all' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new_file 'N' all v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/A' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/A v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
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
csync_redis_lock: OK <TESTBASE>/test/local 1736899562
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local'
Redis Reply: DEL '<TESTBASE>/test/local' -> 1
Directory <TESTBASE>/test
Adding textlist_add_new: <TESTBASE>/test
Skipping textlist_add_new: <TESTBASE>/test
check_pure: filename: '<TESTBASE>/test/local/A' 59, cached path: '<TESTBASE>/test/' 53, 53.
Locking '<TESTBASE>/test/local/A'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/A 1736899562
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/A' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/A
CONN peer < SIG %25test%25/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/A RC 32
has links: file <TESTBASE>/test/local/A checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' 1 1
CONN peer < PATCH %25test%25/A - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/A')
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
Sending octet-stream of 5 bytes
CONN peer < octet-stream 5

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/A (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/A'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/A'
Redis Reply: DEL '<TESTBASE>/test/local/A' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/new_file 'N' all' 59, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/new_file 'N' all'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new_file 'N' all 1736899562
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/new_file 'N' all' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new_file 'N' all
CONN peer < SIG %25test%25/new_file%20%27N%27%20all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new_file 'N' all RC 32
has links: file <TESTBASE>/test/local/new_file 'N' all checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' 1 1
CONN peer < PATCH %25test%25/new_file%20%27N%27%20all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/new_file 'N' all')
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
Sending octet-stream of 10 bytes
CONN peer < octet-stream 10

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/new_file 'N' all (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new_file 'N' all'
Redis Reply: DEL '<TESTBASE>/test/local/new_file 'N' all' -> 1
Directory <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/.Test' 59, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/.Test'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/.Test 1736899562
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/.Test
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/.Test' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/.Test
CONN peer < SIG %25test%25/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/.Test RC 32
has links: file <TESTBASE>/test/local/.Test checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0' 1 1
CONN peer < PATCH %25test%25/.Test - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/.Test')
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
Sending octet-stream of 5 bytes
CONN peer < octet-stream 5

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/.Test (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/.Test'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/.Test'
Redis Reply: DEL '<TESTBASE>/test/local/.Test' -> 1
Directory <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1736899562.
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
