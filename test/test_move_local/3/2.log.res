cmd c "move A Z => new Z " local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2657234
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
csync_cmpchecktxt A: v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899555:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local has changed: 
    v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736899555:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 65
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53091034 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 1, 16877, 1, 1736899556)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53091034 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 1, 16877, 1, 1736899556)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53091034,                 digest='', mode=16877, mtime=1736899556, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Z
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Z
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Z /export/home/dennis/Projects/csync2/csync2/test/test/local/Z
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53091035  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' 
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/A
1 files with same dev:inode (2049:53091035) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Z
SQL Query finished.
check same file (64) /export/home/dennis/Projects/csync2/csync2/test/test/local/A -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Z 
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'  AND  hostname = 'local'
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/A -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Z 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Z
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Z
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2049 AND inode = 53091035 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' ''
mark operation NEW->MV => NEW peer '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' clean_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Z', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2049, 53091035, NULL, 2, 33188, 2, 1736899555)
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2049 AND inode = 53091035 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' ''
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' clean_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Z', 0, 'local', 'other', 'NEW', 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2049, 53091035, NULL, 2, 33188, 2, 1736899555)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/Z 7d157d7c000ae27db146575c08ce30df893d3a64
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z', 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2049, 53091035, '7d157d7c000ae27db146575c08ce30df893d3a64', 33188, 2, 1736899555, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', device = 2049, inode = 53091035, digest = '7d157d7c000ae27db146575c08ce30df893d3a64', mode = 33188, size = 2, mtime = 1736899555, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Z rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Z
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
MODE 2
Redis closing: 0x55b35bf2b4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55b35bf2b180
Closed db: 0x55b35bf2b180
Closed db: 0x55b35bf2b180
csync_config_destroy
csync_config_destroy end
