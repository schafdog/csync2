cmd c "4 Read and deleted (check)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 2 Flags: 1 PID: 2387959
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
GIT:           09e7f4b9db150a32e5a70be67ab3aa9902c0692d-dirty
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/cur 193 
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/123,Sab
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/cur/123,Sab' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/.Trash' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/.Trash/cur' 
csync_cmpchecktxt A: v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/Maildir/.Trash/cur has changed: 
    v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084419 OR filename = '<TESTBASE>/test/local/Maildir/.Trash/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084419, NULL, 129, 16877, 1, 1736888509)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084419 OR filename = '<TESTBASE>/test/local/Maildir/.Trash/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/.Trash/cur (not synced) .
Found row: file '<TESTBASE>/test/local/Maildir/.Trash/cur' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084419, NULL, 1, 16877, 1, 1736888509)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash/cur 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53084419,                 digest='', mode=16877, mtime=1736888509, size=4096, type=1 where filename = '<TESTBASE>/test/local/Maildir/.Trash/cur'
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash/cur 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' 
New file: <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53084422  AND filename != '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' 
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/cur/123,Sab
1 files with same dev:inode (2049:53084422) as file: <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
SQL Query finished.
check same file (32) <TESTBASE>/test/local/Maildir/cur/123,Sab -> <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab 
Found HARDLINK <TESTBASE>/test/local/Maildir/cur/123,Sab -> <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
mark other operation: 'HARDLINK' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53084422 OR filename = '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: HARDLINK(32) Old operation: MV(16) '<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'
Found row: file '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' clean_other: '(null)' result_other: '<TESTBASE>/test/local/Maildir/cur/123,Sab' dirty: 1 operation 32 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab', 0, 'local', 'peer', 'HARDLINK', 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53084422, '<TESTBASE>/test/local/Maildir/cur/123,Sab', 32, 33188, 2, 1736888507)
mark other operation: 'HARDLINK' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53084422 OR filename = '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: HARDLINK(32) Old operation: NEW(2) '<TESTBASE>/test/local/Maildir/cur/123,Sab' ''
Found row: file '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' clean_other: '(null)' result_other: '<TESTBASE>/test/local/Maildir/cur/123,Sab' dirty: 1 operation 32 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab', 0, 'local', 'other', 'HARDLINK', 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53084422, '<TESTBASE>/test/local/Maildir/cur/123,Sab', 32, 33188, 2, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab 32a0617aab4c9fe725f1b5bc441291180ad25b73
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab', 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53084422, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736888507, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53084422, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736888507, type = 2
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur' 67, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/123,Sab
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur/123,Sab' 71, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
check_pure: filename: '<TESTBASE>/test/local/Maildir/tmp' 67, cached path: '<TESTBASE>/test/local/Maildir/cur/' 71, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash' 67, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash/cur' 74, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' 78, cached path: '<TESTBASE>/test/local/Maildir/.Trash/' 74, 74.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
MODE 2
Redis closing: 0x556fa4eaf4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x556fa4eaf180
Closed db: 0x556fa4eaf180
Closed db: 0x556fa4eaf180
csync_config_destroy
csync_config_destroy end
