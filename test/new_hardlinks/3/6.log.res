cmd m "6 more files hardlinked (mark)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 262144 Flags: 1 PID: 2802298
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
Database File: pgsql://csync2:csync238@localhost/csync2
DB Version:    2
IP Version:    IPv4
GIT:           4e39c9f1a4ba8dd4471035859699f313dee4972c
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
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360961 OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360961, NULL, 0, 16877, 1, 1736296279)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296367:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 56360962 OR filename = '<TESTBASE>/test/local/new') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296367:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360962, NULL, 0, 16877, 1, 1736296367)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 0, 33188, 2, 1736296279)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_2
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_2' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_2') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_2' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_2', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 0, 33188, 2, 1736296279)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_3
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_3' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_3') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_3' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_3', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 0, 33188, 2, 1736296279)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_4' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_4') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_4' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_4'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_4', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 0, 33188, 2, 1736296279)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/hardlinked_5') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '<TESTBASE>/test/local/new/hardlinked_5' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_5'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_5', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 0, 33188, 2, 1736296279)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/new_file
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/new_file' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 56360963 OR filename = '<TESTBASE>/test/local/new/new_file') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' ''
Found row: file '<TESTBASE>/test/local/new/new_file' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/new_file'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/new_file', 0, 'local', 'peer', 'MARK', 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 56360963, NULL, 0, 33188, 2, 1736296279)
MODE 262144
Redis closing: 0x555e97764470
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x555e97764150
Closed db: 0x555e97764150
Closed db: 0x555e97764150
csync_config_destroy
csync_config_destroy end
