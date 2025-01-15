cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2644985
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
csync_cmpchecktxt A: v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp has changed: 
    v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084258 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084258, NULL, 129, 16877, 1, 1736899103)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084258 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084258, NULL, 1, 16877, 1, 1736899103)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53084258,                 digest='', mode=16877, mtime=1736899103, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
csync_cmpchecktxt A: v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new has changed: 
    v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084256 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084256, NULL, 129, 16877, 1, 1736899103)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084256 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084256, NULL, 1, 16877, 1, 1736899103)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53084256,                 digest='', mode=16877, mtime=1736899103, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53084425  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53084425 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764', 0, 'local', 'peer', 'NEW', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53084425, NULL, 2, 33188, 2, 1591567200)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' AND device = 2049 AND inode = 53084425 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764', 0, 'local', 'other', 'NEW', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53084425, NULL, 2, 33188, 2, 1591567200)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 6cb0c34bcc2b89205c6601b4edaa2eace19ec981
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53084425, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53084425, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 rows matched: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '1736899103' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1736899103
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new checktxt 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' on DIFF_META
CONN peer < MOD %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '1736899103' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 1736899103
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp checktxt 'v2:mtime=1736899103:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' on DIFF_META
CONN peer < MOD %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '1736899103' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 1736899103
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
uid dennis gid schafroth
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
CONN peer < SIG %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 checktxt 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' 1 1
CONN peer < PATCH %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764')
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
Sending octet-stream of 14 bytes
CONN peer < octet-stream 14

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1736899103.
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1736899099.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x55acf6aba4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55acf6aba180
Closed db: 0x55acf6aba180
Closed db: 0x55acf6aba180
csync_config_destroy
csync_config_destroy end
