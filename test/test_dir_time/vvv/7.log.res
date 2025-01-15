cmd x "New file" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2657024
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
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test 65 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' 
csync_cmpchecktxt A: v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local has changed: 
    v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090893 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090893, NULL, 129, 16877, 1, 1736899551)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090893 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090893, NULL, 1, 16877, 1, 1736899551)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53090893,                 digest='', mode=16877, mtime=1736899551, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' 
csync_cmpchecktxt A: v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899550:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin has changed: 
    v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736899550:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090894 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090894, NULL, 129, 16877, 1, 1736899553)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090894 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090894, NULL, 1, 16877, 1, 1736899553)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53090894,                 digest='', mode=16877, mtime=1736899553, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53091096  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' 
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53091096 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53091096, NULL, 2, 33188, 2, 1736899553)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53091096 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej', 0, 'local', 'other', 'NEW', 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53091096, NULL, 2, 33188, 2, 1736899553)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej 32a0617aab4c9fe725f1b5bc441291180ad25b73
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej', 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53091096, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736899553, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53091096, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736899553, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' 63, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' 69, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/' 63, 63.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/' 69, 69.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' 63, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/' 74, 63.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '1736899553' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local 1736899553
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
CONN peer < SIG %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local checktxt 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' 69, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/' 63, 63.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '1736899553' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin 1736899553
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
CONN peer < SIG %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736899550:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin checktxt 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' on DIFF_META
CONN peer < MOD %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/' 69, 69.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' '1736899553' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej 1736899553
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
uid dennis gid schafroth
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej
CONN peer < SIG %25test%25/usr/local/sbin/hej user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej checktxt 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 1 1
CONN peer < PATCH %25test%25/usr/local/sbin/hej - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej')
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
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/hej' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin 1736899553.
CONN peer < SETTIME %25test%25/usr/local/sbin 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local 1736899551.
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/usr 1736899548.
CONN peer < SETTIME %25test%25/usr 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x55fb07ec14a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55fb07ec1180
Closed db: 0x55fb07ec1180
Closed db: 0x55fb07ec1180
csync_config_destroy
csync_config_destroy end
