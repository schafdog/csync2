cmd x "Setup Maildir" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 3245481
Config-File:   csync2_mysql_local.cfg
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
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360961 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360961, NULL, 1, 16877, 1, 1736112252)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360961 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360961, NULL, 1, 16877, 1, 1736112252)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360961, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360961, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360962 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 1, 16877, 1, 1736112252)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360962 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 1, 16877, 1, 1736112252)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360962, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360965 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360965, NULL, 1, 16877, 1, 1590962400)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360965 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360965, NULL, 1, 16877, 1, 1590962400)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360965, NULL, 16877, 4096, 1590962400, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360965, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360964 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360964, NULL, 1, 16877, 1, 1590962400)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360964 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360964, NULL, 1, 16877, 1, 1590962400)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360964, NULL, 16877, 4096, 1590962400, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360964, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360963, NULL, 1, 16877, 1, 1590962400)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360963 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360963, NULL, 1, 16877, 1, 1590962400)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360963, NULL, 16877, 4096, 1590962400, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360963, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360966 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360966, NULL, 1, 16877, 1, 1736112252)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360966 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360966, NULL, 1, 16877, 1, 1736112252)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360966, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360966, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360967 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360967, NULL, 1, 16877, 1, 1736112252)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360967 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360967, NULL, 1, 16877, 1, 1736112252)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360967, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360967, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur rows matched: 1
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 1 v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1 v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1 v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1 v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1 v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1 v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local 1 v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 53.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1736112252' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local 1736112252
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local checktxt 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '1736112252' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1736112252
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
CONN peer < SIG %25test%25/Maildir user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir checktxt 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' 6 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '1736112252' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1736112252
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
CONN peer < SIG %25test%25/Maildir/.Trash user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash checktxt 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/.Trash - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '1736112252' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1736112252
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur checktxt 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '1736112252' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1736112252
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur checktxt 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '1736112252' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1736112252
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new checktxt 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '1736112252' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 1736112252
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp checktxt 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1736112252.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1736112252.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1736112252.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x55ab84137890
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55ab84131c80
Closed db: 0x55ab84131c80
Closed db: 0x55ab84131c80
csync_config_destroy
csync_config_destroy end
