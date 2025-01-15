cmd x "clean up" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2656696
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
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/tmp
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/tmp
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090171 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp', 0, 'local', 'peer', 'RM', 'v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090171, NULL, 64, 16877, 1, 1736899548)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090171 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' ''
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53089440 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/different', 0, 'local', 'peer', 'RM', 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53089440, NULL, 64, 33188, 2, 1736899548)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53089440 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' ''
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/different deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53089427 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'RM', 'v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53089427, NULL, 64, 16877, 1, 1736899548)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53089427 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: RM(64) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 0 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: delete from file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local v2:mtime=1736899546:mode=16877:user=dennis:group=schafroth:type=dir ''
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
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local RM  0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/%')  AND  hostname = 'local'
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/different RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/different) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/tmp RM  0
Skipping matched file (/export/home/dennis/Projects/csync2/csync2/test/test/local/tmp) from deleted directory (/export/home/dennis/Projects/csync2/csync2/test/test/local/)
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x55bc4ec104a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55bc4ec10180
Closed db: 0x55bc4ec10180
Closed db: 0x55bc4ec10180
csync_config_destroy
csync_config_destroy end
