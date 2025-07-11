cmd x "move Maildir/new/1434.M21,S=6631,W=6764 Maildir/cur/1434.M21,S=6631,W=6764:2," local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2797976
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir 193 
Checking <TESTBASE>/test/local/Maildir/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/tmp' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/tmp 193 
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/new' 
csync_cmpchecktxt A: v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/Maildir/new has changed: 
    v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348016 OR filename = '<TESTBASE>/test/local/Maildir/new') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348016, NULL, 129, 16877, 1, 1736905941)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348016 OR filename = '<TESTBASE>/test/local/Maildir/new') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/new (not synced) .
Found row: file '<TESTBASE>/test/local/Maildir/new' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348016, NULL, 1, 16877, 1, 1736905941)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/new 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53348016,                 digest='', mode=16877, mtime=1736905941, size=4096, type=1 where filename = '<TESTBASE>/test/local/Maildir/new'
Inserted/updated <TESTBASE>/test/local/Maildir/new rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/new 193 
Checking <TESTBASE>/test/local/Maildir/new/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/cur' 
csync_cmpchecktxt A: v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/Maildir/cur has changed: 
    v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348015 OR filename = '<TESTBASE>/test/local/Maildir/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348015, NULL, 129, 16877, 1, 1736905941)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348015 OR filename = '<TESTBASE>/test/local/Maildir/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/cur (not synced) .
Found row: file '<TESTBASE>/test/local/Maildir/cur' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348015, NULL, 1, 16877, 1, 1736905941)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/cur 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53348015,                 digest='', mode=16877, mtime=1736905941, size=4096, type=1 where filename = '<TESTBASE>/test/local/Maildir/cur'
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/cur 193 
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' 
New file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53348032  AND filename != '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' 
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
1 files with same dev:inode (2049:53348032) as file: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL Query finished.
check same file (64) <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'  AND  hostname = 'local'
Found MOVE <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53348032 OR filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,', 0, 'local', 'peer', 'MV', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764', 16, 33188, 2, 1591567200)
mark other operation: 'MV' 'other:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53348032 OR filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
Found row: file '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' clean_other: '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,', 0, 'local', 'other', 'NEW', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, NULL, 2, 33188, 2, 1591567200)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 6cb0c34bcc2b89205c6601b4edaa2eace19ec981
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348032, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Inserted/updated <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/.Trash' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/.Trash/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash/cur 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur' 67, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' 71, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
check_pure: filename: '<TESTBASE>/test/local/Maildir/new' 67, cached path: '<TESTBASE>/test/local/Maildir/cur/' 71, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
check_pure: filename: '<TESTBASE>/test/local/Maildir/tmp' 67, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash' 67, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash/cur' 74, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/new' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/cur' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur' 67, cached path: '<TESTBASE>/test/local/Maildir/.Trash/' 74, 67.
Locking '<TESTBASE>/test/local/Maildir/cur'
Redis reply: SET '<TESTBASE>/test/local/Maildir/cur' '1736905941' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/cur 1736905941
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/Maildir/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Continue to rs_check <TESTBASE>/test/local/Maildir/cur 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/Maildir/cur', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/cur
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/Maildir/cur
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/cur
has links: file <TESTBASE>/test/local/Maildir/cur checktxt 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/Maildir/cur' on DIFF_META
CONN peer < MOD %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/cur'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/cur' -> 1
Directory <TESTBASE>/test/local/Maildir
Adding textlist_add_new: <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir/new' 67, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Locking '<TESTBASE>/test/local/Maildir/new'
Redis reply: SET '<TESTBASE>/test/local/Maildir/new' '1736905941' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/new 1736905941
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/Maildir/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Continue to rs_check <TESTBASE>/test/local/Maildir/new 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/Maildir/new', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/new
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/Maildir/new
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/new
has links: file <TESTBASE>/test/local/Maildir/new checktxt 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/Maildir/new' on DIFF_META
CONN peer < MOD %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/new (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/new'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/new' -> 1
Directory <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' 71, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Locking '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,'
Redis reply: SET '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '1736905941' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 1736905941
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
uid dennis gid schafroth
Updating (MV) 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'
CONN peer < MV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Succes: MV <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' -> 1
Directory <TESTBASE>/test/local/Maildir/cur
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/cur
Directory <TESTBASE>/test/local/Maildir/new
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/new 1736905941.
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/cur 1736905941.
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 1736905921.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x55fc4ad304a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55fc4ad30180
Closed db: 0x55fc4ad30180
Closed db: 0x55fc4ad30180
csync_config_destroy
csync_config_destroy end
