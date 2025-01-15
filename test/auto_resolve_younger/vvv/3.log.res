cmd c "3 create directories (check)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2654023
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084259 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084259, NULL, 1, 16877, 1, 1620424800)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084259 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084259, NULL, 1, 16877, 1, 1620424800)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084259, NULL, 16877, 4096, 1620424800, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084259, digest = NULL, mode = 16877, size = 4096, mtime = 1620424800, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084260 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084260, NULL, 1, 16877, 1, 1620424800)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084260 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084260, NULL, 1, 16877, 1, 1620424800)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084260, NULL, 16877, 4096, 1620424800, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084260, digest = NULL, mode = 16877, size = 4096, mtime = 1620424800, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084262 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084262, NULL, 1, 16877, 1, 1620424800)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084262 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084262, NULL, 1, 16877, 1, 1620424800)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger', 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084262, NULL, 16877, 4096, 1620424800, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084262, digest = NULL, mode = 16877, size = 4096, mtime = 1620424800, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger on /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' 64, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
MODE 2
Redis closing: 0x55fbc00374a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55fbc0037180
Closed db: 0x55fbc0037180
Closed db: 0x55fbc0037180
csync_config_destroy
csync_config_destroy end
