cmd x "3 Maildir tmp file" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2387867
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
New file: <TESTBASE>/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084276 OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084276, NULL, 1, 16877, 1, 1736888507)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084276 OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084276, NULL, 1, 16877, 1, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084276, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084276, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir' 
New file: <TESTBASE>/test/local/Maildir
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084283 OR filename = '<TESTBASE>/test/local/Maildir') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084283, NULL, 1, 16877, 1, 1736888507)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084283 OR filename = '<TESTBASE>/test/local/Maildir') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084283, NULL, 1, 16877, 1, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084283, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084283, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Inserted/updated <TESTBASE>/test/local/Maildir rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir 193 
Checking <TESTBASE>/test/local/Maildir/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/tmp' 
New file: <TESTBASE>/test/local/Maildir/tmp
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084289 OR filename = '<TESTBASE>/test/local/Maildir/tmp') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/tmp', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084289, NULL, 1, 16877, 1, 1736888507)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084289 OR filename = '<TESTBASE>/test/local/Maildir/tmp') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084289, NULL, 1, 16877, 1, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/tmp (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir/tmp', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084289, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084289, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Inserted/updated <TESTBASE>/test/local/Maildir/tmp rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/tmp 193 
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/tmp/123' 
New file: <TESTBASE>/test/local/Maildir/tmp/123
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/tmp/123 <TESTBASE>/test/local/Maildir/tmp/123
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53084422  AND filename != '<TESTBASE>/test/local/Maildir/tmp/123' 
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/Maildir/tmp/123' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53084422 OR filename = '<TESTBASE>/test/local/Maildir/tmp/123') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/tmp/123'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/tmp/123', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53084422, NULL, 2, 33188, 2, 1736888507)
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/Maildir/tmp/123' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53084422 OR filename = '<TESTBASE>/test/local/Maildir/tmp/123') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/tmp/123'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/tmp/123', 0, 'local', 'other', 'NEW', 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53084422, NULL, 2, 33188, 2, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/tmp/123 32a0617aab4c9fe725f1b5bc441291180ad25b73
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir/tmp/123', 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53084422, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736888507, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53084422, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736888507, type = 2
Inserted/updated <TESTBASE>/test/local/Maildir/tmp/123 rows matched: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/cur' 
New file: <TESTBASE>/test/local/Maildir/cur
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084410 OR filename = '<TESTBASE>/test/local/Maildir/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084410, NULL, 1, 16877, 1, 1736888507)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084410 OR filename = '<TESTBASE>/test/local/Maildir/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084410, NULL, 1, 16877, 1, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/cur (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir/cur', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084410, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084410, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/cur 193 
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/.Trash' 
New file: <TESTBASE>/test/local/Maildir/.Trash
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084417 OR filename = '<TESTBASE>/test/local/Maildir/.Trash') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084417, NULL, 1, 16877, 1, 1736888507)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084417 OR filename = '<TESTBASE>/test/local/Maildir/.Trash') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084417, NULL, 1, 16877, 1, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir/.Trash', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084417, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084417, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/Maildir/.Trash/cur' 
New file: <TESTBASE>/test/local/Maildir/.Trash/cur
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084419 OR filename = '<TESTBASE>/test/local/Maildir/.Trash/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084419, NULL, 1, 16877, 1, 1736888507)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53084419 OR filename = '<TESTBASE>/test/local/Maildir/.Trash/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084419, NULL, 1, 16877, 1, 1736888507)
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash/cur (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/Maildir/.Trash/cur', 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53084419, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53084419, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash/cur 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur' 67, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
check_pure: filename: '<TESTBASE>/test/local/Maildir/tmp' 67, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
check_pure: filename: '<TESTBASE>/test/local/Maildir/tmp/123' 71, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash' 67, cached path: '<TESTBASE>/test/local/Maildir/tmp/' 71, 67.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash/cur' 74, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/tmp/123' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/tmp/123 v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/.Trash' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/tmp' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/cur' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '<TESTBASE>/test/local/Maildir/.Trash/' 74, 53.
Locking '<TESTBASE>/test/local'
Redis reply: SET '<TESTBASE>/test/local' '1736888507' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local 1736888507
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local'
Redis Reply: DEL '<TESTBASE>/test/local' -> 1
Directory <TESTBASE>/test
Adding textlist_add_new: <TESTBASE>/test
Skipping textlist_add_new: <TESTBASE>/test
check_pure: filename: '<TESTBASE>/test/local/Maildir' 59, cached path: '<TESTBASE>/test/' 53, 53.
Locking '<TESTBASE>/test/local/Maildir'
Redis reply: SET '<TESTBASE>/test/local/Maildir' '1736888507' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir 1736888507
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir
CONN peer < SIG %25test%25/Maildir user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir RC 32
has links: file <TESTBASE>/test/local/Maildir checktxt 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' 5 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur' 67, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/Maildir/cur'
Redis reply: SET '<TESTBASE>/test/local/Maildir/cur' '1736888507' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/cur 1736888507
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 32
has links: file <TESTBASE>/test/local/Maildir/cur checktxt 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/cur'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/cur' -> 1
Directory <TESTBASE>/test/local/Maildir
Adding textlist_add_new: <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir/tmp' 67, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Locking '<TESTBASE>/test/local/Maildir/tmp'
Redis reply: SET '<TESTBASE>/test/local/Maildir/tmp' '1736888507' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/tmp 1736888507
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp RC 32
has links: file <TESTBASE>/test/local/Maildir/tmp checktxt 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/tmp'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/tmp' -> 1
Directory <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash' 67, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Locking '<TESTBASE>/test/local/Maildir/.Trash'
Redis reply: SET '<TESTBASE>/test/local/Maildir/.Trash' '1736888507' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/.Trash 1736888507
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/.Trash
CONN peer < SIG %25test%25/Maildir/.Trash user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash RC 32
has links: file <TESTBASE>/test/local/Maildir/.Trash checktxt 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/.Trash - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/.Trash'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/.Trash' -> 1
Directory <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash/cur' 74, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Locking '<TESTBASE>/test/local/Maildir/.Trash/cur'
Redis reply: SET '<TESTBASE>/test/local/Maildir/.Trash/cur' '1736888507' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/.Trash/cur 1736888507
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur RC 32
has links: file <TESTBASE>/test/local/Maildir/.Trash/cur checktxt 'v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/.Trash/cur'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/.Trash/cur' -> 1
Directory <TESTBASE>/test/local/Maildir/.Trash
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/.Trash
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir/.Trash
check_pure: filename: '<TESTBASE>/test/local/Maildir/tmp/123' 71, cached path: '<TESTBASE>/test/local/Maildir/.Trash/' 74, 67.
Locking '<TESTBASE>/test/local/Maildir/tmp/123'
Redis reply: SET '<TESTBASE>/test/local/Maildir/tmp/123' '1736888507' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/tmp/123 1736888507
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/Maildir/tmp/123' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/tmp/123
CONN peer < SIG %25test%25/Maildir/tmp/123 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp/123 RC 32
has links: file <TESTBASE>/test/local/Maildir/tmp/123 checktxt 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 1 1
CONN peer < CREATE %25test%25/Maildir/tmp/123 - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (send data).'
read_conn_status 'OK (send data).' 0
Sending octet-stream of 0 bytes
CONN peer < octet-stream 0

CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp/123 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/tmp/123'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/tmp/123'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/tmp/123' -> 1
Directory <TESTBASE>/test/local/Maildir/tmp
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/tmp 1736888507.
CONN peer < SETTIME %25test%25/Maildir/tmp 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash 1736888507.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 1736888507.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1736888507.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x5627172f94a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5627172f9180
Closed db: 0x5627172f9180
Closed db: 0x5627172f9180
csync_config_destroy
csync_config_destroy end
