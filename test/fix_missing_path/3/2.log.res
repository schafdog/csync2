cmd cI "2. New local/recursive/.. -I" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
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
GIT:           518d46c56fc057db5d6ba8cd2c6115fe2c86aa78-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 69 
Checking <TESTBASE>/test/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
New file: <TESTBASE>/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348043, NULL, 16877, 4096, 1736955860, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348043, digest = NULL, mode = 16877, size = 4096, mtime = 1736955860, type = 1
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 197 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive' 
New file: <TESTBASE>/test/local/recursive
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/local/recursive (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/recursive', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348044, NULL, 16877, 4096, 1736955860, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348044, digest = NULL, mode = 16877, size = 4096, mtime = 1736955860, type = 1
Inserted/updated <TESTBASE>/test/local/recursive rows matched: 0
csync_check_dir: <TESTBASE>/test/local/recursive 197 
Checking <TESTBASE>/test/local/recursive/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1' 
New file: <TESTBASE>/test/local/recursive/1
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/recursive/1', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348045, NULL, 16877, 4096, 1736955860, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348045, digest = NULL, mode = 16877, size = 4096, mtime = 1736955860, type = 1
Inserted/updated <TESTBASE>/test/local/recursive/1 rows matched: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1 197 
Checking <TESTBASE>/test/local/recursive/1/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2' 
New file: <TESTBASE>/test/local/recursive/1/2
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/recursive/1/2', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348046, NULL, 16877, 4096, 1736955860, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348046, digest = NULL, mode = 16877, size = 4096, mtime = 1736955860, type = 1
Inserted/updated <TESTBASE>/test/local/recursive/1/2 rows matched: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2 197 
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3' 
New file: <TESTBASE>/test/local/recursive/1/2/3
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/recursive/1/2/3', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348047, NULL, 16877, 4096, 1736955860, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348047, digest = NULL, mode = 16877, size = 4096, mtime = 1736955860, type = 1
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3 rows matched: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3 197 
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4' 
New file: <TESTBASE>/test/local/recursive/1/2/3/4
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/recursive/1/2/3/4', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348048, NULL, 16877, 4096, 1736955860, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348048, digest = NULL, mode = 16877, size = 4096, mtime = 1736955860, type = 1
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4 rows matched: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4 197 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5' 
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4/5 (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/recursive/1/2/3/4/5', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348049, NULL, 16877, 4096, 1736955860, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348049, digest = NULL, mode = 16877, size = 4096, mtime = 1736955860, type = 1
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4/5 197 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
check_pure: filename: '<TESTBASE>/test/local/recursive' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
check_pure: filename: '<TESTBASE>/test/local/recursive/1' 69, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2' 71, cached path: '<TESTBASE>/test/local/recursive/' 69, 69.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3' 73, cached path: '<TESTBASE>/test/local/recursive/1/' 71, 71.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3/4' 75, cached path: '<TESTBASE>/test/local/recursive/1/2/' 73, 73.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3/4/5' 77, cached path: '<TESTBASE>/test/local/recursive/1/2/3/' 75, 75.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 69 
MODE 2
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
