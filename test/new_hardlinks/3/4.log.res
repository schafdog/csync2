cmd x "4 more files hardlinked (x)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2799515
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
Database File: pgsql://csync2:csync238@localhost/csync2
DB Version:    2
IP Version:    IPv4
GIT:           4e39c9f1a4ba8dd4471035859699f313dee4972c
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new' 
csync_cmpchecktxt A: v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/new has changed: 
    v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360962 OR filename = '<TESTBASE>/test/local/new') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 129, 16877, 1, 1736296315)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360962 OR filename = '<TESTBASE>/test/local/new') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new (not synced) .
Found row: file '<TESTBASE>/test/local/new' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 1, 16877, 1, 1736296315)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=56360962,                 digest='', mode=16877, mtime=1736296315, size=4096, type=1 where filename = '<TESTBASE>/test/local/new'
Inserted/updated <TESTBASE>/test/local/new rows matched: 0
csync_check_dir: <TESTBASE>/test/local/new 193 
Checking <TESTBASE>/test/local/new/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/new_file' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_3' 
New file: <TESTBASE>/test/local/new/hardlinked_3
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_3 <TESTBASE>/test/local/new/hardlinked_3
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 56360963  AND filename != '<TESTBASE>/test/local/new/hardlinked_3' 
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked
Adding textlist_add_new: <TESTBASE>/test/local/new/new_file
2 files with same dev:inode (2049:56360963) as file: <TESTBASE>/test/local/new/hardlinked_3
SQL Query finished.
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_3 
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_3 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_3 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_3') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_3', 0, 'local', 'peer', 'HARDLINK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '<TESTBASE>/test/local/new/hardlinked', 32, 33188, 2, 1736296279)
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_3') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_3' clean_other: '(null)' result_other: '<TESTBASE>/test/local/new/hardlinked' dirty: 1 operation 32 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_3', 0, 'local', 'other', 'HARDLINK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '<TESTBASE>/test/local/new/hardlinked', 32, 33188, 2, 1736296279)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/new/hardlinked_3', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736296279, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 56360963, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736296279, type = 2
Inserted/updated <TESTBASE>/test/local/new/hardlinked_3 rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_2' 
New file: <TESTBASE>/test/local/new/hardlinked_2
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new/hardlinked_2 <TESTBASE>/test/local/new/hardlinked_2
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 56360963  AND filename != '<TESTBASE>/test/local/new/hardlinked_2' 
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked
Adding textlist_add_new: <TESTBASE>/test/local/new/hardlinked_3
Adding textlist_add_new: <TESTBASE>/test/local/new/new_file
3 files with same dev:inode (2049:56360963) as file: <TESTBASE>/test/local/new/hardlinked_2
SQL Query finished.
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_2 
check same file (32) <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked_3 -> <TESTBASE>/test/local/new/hardlinked_2 
check same file (32) <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_2 
Found HARDLINK <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_2 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/hardlinked'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_2') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: HARDLINK(32) Old operation: HARDLINK(32) '<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'
Found row: file '<TESTBASE>/test/local/new/hardlinked_2' clean_other: '(null)' result_other: '<TESTBASE>/test/local/new/hardlinked' dirty: 1 operation 32 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_2', 0, 'local', 'peer', 'HARDLINK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '<TESTBASE>/test/local/new/hardlinked', 32, 33188, 2, 1736296279)
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/hardlinked'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_2') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_2' clean_other: '(null)' result_other: '<TESTBASE>/test/local/new/hardlinked' dirty: 1 operation 32 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_2', 0, 'local', 'other', 'HARDLINK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '<TESTBASE>/test/local/new/hardlinked', 32, 33188, 2, 1736296279)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/new/hardlinked_2', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736296279, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 56360963, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736296279, type = 2
Inserted/updated <TESTBASE>/test/local/new/hardlinked_2 rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
check_pure: filename: '<TESTBASE>/test/local/new' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked' 63, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_2' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_3' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
check_pure: filename: '<TESTBASE>/test/local/new/new_file' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new/hardlinked_3 1 v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new/hardlinked_2 1 v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new 1 v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir
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
check_pure: filename: '<TESTBASE>/test/local/new' 59, cached path: '<TESTBASE>/test/local/new/' 63, 59.
Locking '<TESTBASE>/test/local/new'
Redis reply: SET '<TESTBASE>/test/local/new' '1736296315' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new 1736296315
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/new' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new
CONN peer < SIG %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Continue to rs_check <TESTBASE>/test/local/new 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/new', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/new
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new
has links: file <TESTBASE>/test/local/new checktxt 'v2:mtime=1736296315:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/new' on DIFF_META
CONN peer < MOD %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/new (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new'
Redis Reply: DEL '<TESTBASE>/test/local/new' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_2' 63, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/new/hardlinked_2'
Redis reply: SET '<TESTBASE>/test/local/new/hardlinked_2' '1736296315' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new/hardlinked_2 1736296315
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
uid dennis gid schafroth
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/hardlinked'
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/hardlinked_2
CONN peer < SIG %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_2 RC 32
has links: file <TESTBASE>/test/local/new/hardlinked_2 checktxt 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 4 1
do hardlink check <TESTBASE>/test/local/new/hardlinked_2 <TESTBASE>/test/local/new/hardlinked 
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/hardlinked
CONN peer < SIG %25test%25/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/hardlinked RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
Flags for gencheck: 112 
Continue to rs_check <TESTBASE>/test/local/new/hardlinked 0
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/new/hardlinked', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            <TESTBASE>/test/local/new/hardlinked
Hardlinking peer <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_2
CONN peer < MKHARDLINK %25test%25/new/hardlinked %25test%25/new/hardlinked_2 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_2 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'peer'
clear dirty HARDLINK
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_2 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new/hardlinked_2'
Redis Reply: DEL '<TESTBASE>/test/local/new/hardlinked_2' -> 1
Directory <TESTBASE>/test/local/new
Adding textlist_add_new: <TESTBASE>/test/local/new
Directory <TESTBASE>/test/local/new
Skipping textlist_add_new: <TESTBASE>/test/local/new
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_3' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Locking '<TESTBASE>/test/local/new/hardlinked_3'
Redis reply: SET '<TESTBASE>/test/local/new/hardlinked_3' '1736296315' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new/hardlinked_3 1736296315
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
uid dennis gid schafroth
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/hardlinked_3
CONN peer < SIG %25test%25/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_3 RC 32
has links: file <TESTBASE>/test/local/new/hardlinked_3 checktxt 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 4 1
do hardlink check <TESTBASE>/test/local/new/hardlinked_3 <TESTBASE>/test/local/new/hardlinked 
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/hardlinked
CONN peer < SIG %25test%25/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/hardlinked RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
Flags for gencheck: 112 
Continue to rs_check <TESTBASE>/test/local/new/hardlinked 0
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/new/hardlinked', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            <TESTBASE>/test/local/new/hardlinked
Hardlinking peer <TESTBASE>/test/local/new/hardlinked -> <TESTBASE>/test/local/new/hardlinked_3
CONN peer < MKHARDLINK %25test%25/new/hardlinked %25test%25/new/hardlinked_3 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_3 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'peer'
clear dirty HARDLINK
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_3 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new/hardlinked_3'
Redis Reply: DEL '<TESTBASE>/test/local/new/hardlinked_3' -> 1
Directory <TESTBASE>/test/local/new
Skipping textlist_add_new: <TESTBASE>/test/local/new
Directory <TESTBASE>/test/local/new
Skipping textlist_add_new: <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/new 1736296315.
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1736296279.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x5607673bf470
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5607673bf150
Closed db: 0x5607673bf150
Closed db: 0x5607673bf150
csync_config_destroy
csync_config_destroy end
