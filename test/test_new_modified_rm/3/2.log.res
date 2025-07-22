cmd c "modified A (but not synced) => new A" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2655622
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
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/A' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2 
<TESTBASE>/test/local/A has changed: 
    v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2 
DB: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2 NEW
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
mark other operation: 'MOD' 'peer:<TESTBASE>/test/local/A' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/A') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW -> MOD => NEW peer:<TESTBASE>/test/local/A (not synced) .
Found row: file '<TESTBASE>/test/local/A' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/A'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/A', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2', 2049, 53089262, NULL, 2, 33188, 2, 1736899530)
mark other operation: 'MOD' 'other:<TESTBASE>/test/local/A' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/A') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD(130) Old operation: NEW(2) '<TESTBASE>/test/local/A' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/A (not synced) .
Found row: file '<TESTBASE>/test/local/A' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 2 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/A'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/A', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2', 2049, 53089262, NULL, 2, 33188, 2, 1736899530)
INSERT/UPDATE: <TESTBASE>/test/local/A 7d157d7c000ae27db146575c08ce30df893d3a64
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=2', device=2049, inode=53089262,                 digest='7d157d7c000ae27db146575c08ce30df893d3a64', mode=33188, mtime=1736899530, size=2, type=2 where filename = '<TESTBASE>/test/local/A'
Inserted/updated <TESTBASE>/test/local/A rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/A
check_pure: filename: '<TESTBASE>/test/local/A' 59, cached path: '<TESTBASE>/test/' 53, 53.
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
