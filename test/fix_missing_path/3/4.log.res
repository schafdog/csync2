cmd x "4. clean up" local peer test
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
csync_check_dir: <TESTBASE>/test 65 
Checking <TESTBASE>/test/* ..
No match. Don't check at all: <TESTBASE>/test/peer
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11' AND device = 2049 AND inode = 53348050 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53348050, NULL, 64, 33188, 2, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11' AND device = 2049 AND inode = 53348050 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
mark operation NEW -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348049 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4/5', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348049, NULL, 64, 16877, 1, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348049 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5') AND peername = 'other' ORDER BY timestamp 
WARN: operation changed: MKDIR(1) => MKDIR(129)
SQL Query finished.
mark other: RM(64) Old operation: MKDIR(1) '<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
mark operation MKDIR -> RM other:<TESTBASE>/test/local/recursive/1/2/3/4/5 deleted before syncing. Removing from dirty.
Found row: file '<TESTBASE>/test/local/recursive/1/2/3/4/5' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348048 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348048, NULL, 64, 16877, 1, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3/4' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348048 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4', 0, 'local', 'other', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348048, NULL, 64, 16877, 1, 1736955863)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2/3' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348047 OR filename = '<TESTBASE>/test/local/recursive/1/2/3') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348047, NULL, 64, 16877, 1, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2/3' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348047 OR filename = '<TESTBASE>/test/local/recursive/1/2/3') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3', 0, 'local', 'other', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348047, NULL, 64, 16877, 1, 1736955863)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1/2' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348046 OR filename = '<TESTBASE>/test/local/recursive/1/2') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348046, NULL, 64, 16877, 1, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1/2' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348046 OR filename = '<TESTBASE>/test/local/recursive/1/2') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2', 0, 'local', 'other', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348046, NULL, 64, 16877, 1, 1736955863)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive/1' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348045 OR filename = '<TESTBASE>/test/local/recursive/1') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348045, NULL, 64, 16877, 1, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive/1' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348045 OR filename = '<TESTBASE>/test/local/recursive/1') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1', 0, 'local', 'other', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348045, NULL, 64, 16877, 1, 1736955863)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/recursive' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348044 OR filename = '<TESTBASE>/test/local/recursive') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348044, NULL, 64, 16877, 1, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local/recursive' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348044 OR filename = '<TESTBASE>/test/local/recursive') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive', 0, 'local', 'other', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348044, NULL, 64, 16877, 1, 1736955863)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'RM' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348043 OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348043, NULL, 64, 16877, 1, 1736955863)
mark other operation: 'RM' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348043 OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'RM', 'v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348043, NULL, 64, 16877, 1, 1736955863)
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local'
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4 v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3 v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2 v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1 v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir ''
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
Dirty (missing) item <TESTBASE>/test/local RM  0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Deleting peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
delete flags: 0
csync_cmpchecktxt A: v2:mtime=1736955863:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: --- 
<TESTBASE>/test/local is different on peer (cktxt char #1).
>>> PEER:  v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/local' OR filename LIKE '<TESTBASE>/test/local/%')  AND  hostname = 'local'
DELETE (<TESTBASE>/test/local) Last dir: <TESTBASE>/test/local/. rc: 4
Dirty (missing) item <TESTBASE>/test/local/recursive RM  0
Skipping matched file (<TESTBASE>/test/local/recursive) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5 RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5) from deleted directory (<TESTBASE>/test/local/)
Dirty (missing) item <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RM  0
Skipping matched file (<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c) from deleted directory (<TESTBASE>/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
