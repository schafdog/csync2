cmd c "check: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2798196
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
csync_cmpchecktxt A: v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736905944:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur has changed: 
    v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736905944:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348015 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348015, NULL, 129, 16877, 1, 1736905947)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348015 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348015, NULL, 1, 16877, 1, 1736905947)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53348015,                 digest='', mode=16877, mtime=1736905947, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53348032  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S
1 files with same dev:inode (2049:53348032) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL Query finished.
check same file (64) /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  hostname = 'local'
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53348032 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 0, 'local', 'peer', 'MV', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S', 16, 33188, 2, 1591567200)
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53348032 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' ''
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' clean_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 0, 'local', 'other', 'NEW', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, NULL, 2, 33188, 2, 1591567200)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 6cb0c34bcc2b89205c6601b4edaa2eace19ec981
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348032, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST rows matched: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
csync_cmpchecktxt A: v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur has changed: 
    v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348023 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348023, NULL, 129, 16877, 1, 1736905947)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348023 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348023, NULL, 1, 16877, 1, 1736905947)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53348023,                 digest='', mode=16877, mtime=1736905947, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53348032  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
1 files with same dev:inode (2049:53348032) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL Query finished.
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53348032 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: HARDLINK(32) Old operation: MV(16) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' clean_other: '(null)' result_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' dirty: 1 operation 32 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 0, 'local', 'peer', 'HARDLINK', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 32, 33188, 2, 1591567200)
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53348032 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' ''
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' clean_other: '(null)' result_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' dirty: 1 operation 32 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 0, 'local', 'other', 'HARDLINK', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 32, 33188, 2, 1591567200)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 6cb0c34bcc2b89205c6601b4edaa2eace19ec981
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348032, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348032, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 78, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 74.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
MODE 2
Redis closing: 0x556a376c54a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x556a376c5180
Closed db: 0x556a376c5180
Closed db: 0x556a376c5180
csync_config_destroy
csync_config_destroy end
