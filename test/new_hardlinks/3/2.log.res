cmd c "2 two new files hardlinked (check)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2798929
Config-File:   csync2_pgsql_local.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/local'.
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
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test 65 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
csync_cmpchecktxt A: v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736295344:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local has changed: 
    v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736295344:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 65
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360961 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360961, NULL, 129, 16877, 1, 1736296279)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360961 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360961, NULL, 1, 16877, 1, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=56360961,                 digest='', mode=16877, mtime=1736296279, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' 
csync_cmpchecktxt A: v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736295350:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/new has changed: 
    v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736295350:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360962 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 129, 16877, 1, 1736296279)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360962 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 1, 16877, 1, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=56360962,                 digest='', mode=16877, mtime=1736296279, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/new 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' 
csync_cmpchecktxt A: v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file has changed: 
    v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
DB: v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4 NEW
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 130, 33188, 2, 1736296279)
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file', 0, 'local', 'other', 'NEW', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 2, 33188, 2, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device=2049, inode=56360963,                 digest='32a0617aab4c9fe725f1b5bc441291180ad25b73', mode=33188, mtime=1736296279, size=4, type=2 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file rows matched: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' 
csync_cmpchecktxt A: v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked has changed: 
    v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
DB: v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4 NEW
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
mark other operation: 'MOD' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked') AND peername = 'peer' ORDER BY timestamp 
WARN: operation changed: NEW(2) => NEW(130)
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 2, 33188, 2, 1736296279)
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked', 0, 'local', 'other', 'NEW', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 2, 33188, 2, 1736296279)
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device=2049, inode=56360963,                 digest='32a0617aab4c9fe725f1b5bc441291180ad25b73', mode=33188, mtime=1736296279, size=4, type=2 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' 63, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' 63, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/' 63, 63.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360970 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: MARK(0) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink', 0, 'local', 'peer', 'RM', 'v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360970, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360970 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' ''
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360970 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6', 0, 'local', 'peer', 'RM', 'v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360970, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360970 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: HARDLINK(32) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'
mark operation HARDLINK -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5', 0, 'local', 'peer', 'RM', 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5', 0, 'local', 'other', 'RM', 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4', 0, 'local', 'peer', 'RM', 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4', 0, 'local', 'other', 'RM', 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3', 0, 'local', 'peer', 'RM', 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: HARDLINK(32) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
mark operation HARDLINK -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: RM(64) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2', 0, 'local', 'peer', 'RM', 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 64, 33188, 2, 1736296279)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: HARDLINK(32) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
mark operation HARDLINK -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
MODE 2
Redis closing: 0x5652419d8470
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5652419d8150
Closed db: 0x5652419d8150
Closed db: 0x5652419d8150
csync_config_destroy
csync_config_destroy end
