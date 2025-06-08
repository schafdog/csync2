cmd m "New dir timestamp (mark)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 262144 Flags: 1 PID: 2656939
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
Not in one of my groups: <TESTBASE>/test (NULL)
SQL: SELECT filename, mode, checktxt, digest, device, inode, mtime FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename DESC
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090891 OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090891, NULL, 0, 16877, 1, 1736899548)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/usr' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090892 OR filename = '<TESTBASE>/test/local/usr') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090892, NULL, 0, 16877, 1, 1736899548)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/usr/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090893 OR filename = '<TESTBASE>/test/local/usr/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr/local', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090893, NULL, 0, 16877, 1, 1736899551)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local/sbin
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local/sbin
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899550:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090894 OR filename = '<TESTBASE>/test/local/usr/local/sbin') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local/sbin'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr/local/sbin', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736899550:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090894, NULL, 0, 16877, 1, 1736899550)
MODE 262144
Redis closing: 0x559f734e14a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x559f734e1180
Closed db: 0x559f734e1180
Closed db: 0x559f734e1180
csync_config_destroy
csync_config_destroy end
