cmd c "move Z B => new B " local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2657292
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
csync_cmpchecktxt A: v2:mtime=1736899558:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local has changed: 
    v2:mtime=1736899558:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736899556:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 65
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899558:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53091034 OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local (not synced) .
Found row: file '<TESTBASE>/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899558:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 1, 16877, 1, 1736899558)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899558:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53091034 OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Found row: file '<TESTBASE>/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899558:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 1, 16877, 1, 1736899558)
INSERT/UPDATE: <TESTBASE>/test/local 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736899558:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53091034,                 digest='', mode=16877, mtime=1736899558, size=4096, type=1 where filename = '<TESTBASE>/test/local'
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/B
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/B' 
New file: <TESTBASE>/test/local/B
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/B <TESTBASE>/test/local/B
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53091035  AND filename != '<TESTBASE>/test/local/B' 
Adding textlist_add_new: <TESTBASE>/test/local/Z
1 files with same dev:inode (2049:53091035) as file: <TESTBASE>/test/local/B
SQL Query finished.
check same file (64) <TESTBASE>/test/local/Z -> <TESTBASE>/test/local/B 
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/local/Z'  AND  hostname = 'local'
Found MOVE <TESTBASE>/test/local/Z -> <TESTBASE>/test/local/B 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/B
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/B
mark other operation: 'MV' 'peer:<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2049 AND inode = 53091035 OR filename = '<TESTBASE>/test/local/B') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Z' ''
mark operation NEW->MV => NEW peer '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/Z'.
Found row: file '<TESTBASE>/test/local/B' clean_other: '<TESTBASE>/test/local/Z' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/B'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Z'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/B', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2049, 53091035, NULL, 2, 33188, 2, 1736899555)
mark other operation: 'MV' 'other:<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2049 AND inode = 53091035 OR filename = '<TESTBASE>/test/local/B') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MV(16) Old operation: NEW(2) '<TESTBASE>/test/local/Z' ''
mark operation NEW->MV => NEW other '<TESTBASE>/test/local/B' '<TESTBASE>/test/local/Z' '<TESTBASE>/test/local/Z'.
Found row: file '<TESTBASE>/test/local/B' clean_other: '<TESTBASE>/test/local/Z' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/B'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Z'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/B', 0, 'local', 'other', 'NEW', 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2049, 53091035, NULL, 2, 33188, 2, 1736899555)
INSERT/UPDATE: <TESTBASE>/test/local/B 7d157d7c000ae27db146575c08ce30df893d3a64
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/B', 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2049, 53091035, '7d157d7c000ae27db146575c08ce30df893d3a64', 33188, 2, 1736899555, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899555:mode=33188:user=dennis:group=schafroth:type=reg:size=2', device = 2049, inode = 53091035, digest = '7d157d7c000ae27db146575c08ce30df893d3a64', mode = 33188, size = 2, mtime = 1736899555, type = 2
Inserted/updated <TESTBASE>/test/local/B rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/B
check_pure: filename: '<TESTBASE>/test/local/B' 59, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
MODE 2
Redis closing: 0x555dfdc4d4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x555dfdc4d180
Closed db: 0x555dfdc4d180
Closed db: 0x555dfdc4d180
csync_config_destroy
csync_config_destroy end
