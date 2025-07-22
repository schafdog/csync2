cmd c "New local/new_file" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2657671
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
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
New file: <TESTBASE>/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53346599, NULL, 1, 16877, 1, 1736899563)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53346599, NULL, 1, 16877, 1, 1736899563)
INSERT/UPDATE: <TESTBASE>/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53346599, NULL, 16877, 4096, 1736899563, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53346599, digest = NULL, mode = 16877, size = 4096, mtime = 1736899563, type = 1
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new_file' 
New file: <TESTBASE>/test/local/new_file
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/new_file <TESTBASE>/test/local/new_file
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53346600  AND filename != '<TESTBASE>/test/local/new_file' 
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/new_file' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new_file', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53346600, NULL, 2, 33188, 2, 1736899563)
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/new_file' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/new_file') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new_file'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new_file', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53346600, NULL, 2, 33188, 2, 1736899563)
INSERT/UPDATE: <TESTBASE>/test/local/new_file eeb4df3d04063049b45ea11a12354a37e8740687
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/new_file', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53346600, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899563, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device = 2049, inode = 53346600, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899563, type = 2
Inserted/updated <TESTBASE>/test/local/new_file rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file
check_pure: filename: '<TESTBASE>/test/local/new_file' 59, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
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
