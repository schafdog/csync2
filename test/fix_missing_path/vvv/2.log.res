cmd cI "2. New local/recursive/.. -I" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 5 PID: 2810963
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
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test 69 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local', 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53347988, NULL, 16877, 4096, 1736906319, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53347988, digest = NULL, mode = 16877, size = 4096, mtime = 1736906319, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 197 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive', 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53347989, NULL, 16877, 4096, 1736906319, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53347989, digest = NULL, mode = 16877, size = 4096, mtime = 1736906319, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive 197 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1', 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53347997, NULL, 16877, 4096, 1736906319, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53347997, digest = NULL, mode = 16877, size = 4096, mtime = 1736906319, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 197 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2', 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348000, NULL, 16877, 4096, 1736906319, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348000, digest = NULL, mode = 16877, size = 4096, mtime = 1736906319, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 197 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3', 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348011, NULL, 16877, 4096, 1736906319, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348011, digest = NULL, mode = 16877, size = 4096, mtime = 1736906319, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 197 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4', 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348013, NULL, 16877, 4096, 1736906319, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348013, digest = NULL, mode = 16877, size = 4096, mtime = 1736906319, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 197 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5', 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348014, NULL, 16877, 4096, 1736906319, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736906319:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348014, digest = NULL, mode = 16877, size = 4096, mtime = 1736906319, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 197 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' 69, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/' 69, 69.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/' 71, 71.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' 75, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/' 73, 73.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' 77, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/' 75, 75.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 69 
MODE 2
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closed db: 0x56180a5e4180
csync_config_destroy
csync_config_destroy end
