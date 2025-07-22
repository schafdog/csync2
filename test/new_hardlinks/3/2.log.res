cmd c "2 two new files hardlinked (check)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2798929
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
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 56360961, NULL, 129, 16877, 1, 1736296279)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Found row: file '<TESTBASE>/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 56360961, NULL, 1, 16877, 1, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device=2049, inode=56360961,                 digest='', mode=16877, mtime=1736296279, size=4096, type=1 where filename = '<TESTBASE>/test/local'
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/new has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 56360962, NULL, 129, 16877, 1, 1736296279)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new (not synced) .
Found row: file '<TESTBASE>/test/local/new' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 56360962, NULL, 1, 16877, 1, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device=2049, inode=56360962,                 digest='', mode=16877, mtime=1736296279, size=4096, type=1 where filename = '<TESTBASE>/test/local/new'
Inserted/updated <TESTBASE>/test/local/new rows matched: 0
csync_check_dir: <TESTBASE>/test/local/new 193 
Checking <TESTBASE>/test/local/new/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/new_file' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
<TESTBASE>/test/local/new/new_file has changed: 
    v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
DB: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 NEW
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/new/new_file' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/new_file') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/new_file'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/new_file', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 130, 33188, 2, 1736296279)
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/new/new_file' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/new_file') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new/new_file (not synced) .
Found row: file '<TESTBASE>/test/local/new/new_file' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/new_file'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/new_file', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 2, 33188, 2, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device=2049, inode=56360963,                 digest='32a0617aab4c9fe725f1b5bc441291180ad25b73', mode=33188, mtime=1736296279, size=4, type=2 where filename = '<TESTBASE>/test/local/new/new_file'
Inserted/updated <TESTBASE>/test/local/new/new_file rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
<TESTBASE>/test/local/new/hardlinked has changed: 
    v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
DB: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 NEW
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/new/hardlinked' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked') AND peername = 'peer' ORDER BY timestamp 
WARN: operation changed: NEW(2) => NEW(130)
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/new/new_file' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/new/hardlinked (not synced) .
Found row: file '<TESTBASE>/test/local/new/hardlinked' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 2, 33188, 2, 1736296279)
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/new/hardlinked' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/new/hardlinked' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/new/hardlinked (not synced) .
Found row: file '<TESTBASE>/test/local/new/hardlinked' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 2, 33188, 2, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device=2049, inode=56360963,                 digest='32a0617aab4c9fe725f1b5bc441291180ad25b73', mode=33188, mtime=1736296279, size=4, type=2 where filename = '<TESTBASE>/test/local/new/hardlinked'
Inserted/updated <TESTBASE>/test/local/new/hardlinked rows matched: 0
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_6
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
check_pure: filename: '<TESTBASE>/test/local/new/new_file' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/was_hardlink') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: MARK(0) '<TESTBASE>/test/local/new/was_hardlink' ''
Found row: file '<TESTBASE>/test/local/new/was_hardlink' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/was_hardlink'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/was_hardlink', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360970, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new/was_hardlink' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/was_hardlink') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/new/was_hardlink' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/new/was_hardlink deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/new/was_hardlink' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/was_hardlink'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/was_hardlink'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_6
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_6
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_6') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '<TESTBASE>/test/local/new/hardlinked_6' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_6' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_6'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_6', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360970, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new/hardlinked_6' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_6') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: HARDLINK(32) '<TESTBASE>/test/local/new/hardlinked_6' '<TESTBASE>/test/local/new/was_hardlink'
mark operation HARDLINK -> RM other:<TESTBASE>/test/local/new/hardlinked_6 deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/new/hardlinked_6' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_6'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_6'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_5') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_5'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_5', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new/hardlinked_5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_5') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '<TESTBASE>/test/local/new/hardlinked_5' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_5' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_5'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_5', 0, 'local', 'other', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_5'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_4' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_4') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '<TESTBASE>/test/local/new/hardlinked_5' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_4' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_4'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_4', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new/hardlinked_4' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_4') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '<TESTBASE>/test/local/new/hardlinked_4' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_4' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_4'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_4', 0, 'local', 'other', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_4'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_3' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_3') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '<TESTBASE>/test/local/new/hardlinked_5' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_3' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_3', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new/hardlinked_3' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_3') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: HARDLINK(32) '<TESTBASE>/test/local/new/hardlinked_3' '<TESTBASE>/test/local/new/hardlinked'
mark operation HARDLINK -> RM other:<TESTBASE>/test/local/new/hardlinked_3 deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/new/hardlinked_3' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_3'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_2' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_2') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '<TESTBASE>/test/local/new/hardlinked_5' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_2' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_2', 0, 'local', 'peer', 'RM', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/new/hardlinked_2' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new/hardlinked_2') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: HARDLINK(32) '<TESTBASE>/test/local/new/hardlinked_2' '<TESTBASE>/test/local/new/hardlinked'
mark operation HARDLINK -> RM other:<TESTBASE>/test/local/new/hardlinked_2 deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/new/hardlinked_2' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new/hardlinked_2'
csync_file_args: '<TESTBASE>/test' flags 65 
MODE 2
Redis closing: <PTR>
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: <PTR>
Closed db: <PTR>
Closed db: <PTR>
csync_config_destroy
csync_config_destroy end
