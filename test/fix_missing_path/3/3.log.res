cmd x "3. Sync with missing directories" local peer test
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive 193 
Checking <TESTBASE>/test/local/recursive/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1 193 
Checking <TESTBASE>/test/local/recursive/1/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2 193 
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3 193 
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4 193 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5' 
csync_cmpchecktxt A: v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/recursive/1/2/3/4/5 has changed: 
    v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736955860:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 193
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348049 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4/5', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348049, NULL, 129, 16877, 1, 1736955862)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53348049 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4/5', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348049, NULL, 129, 16877, 1, 1736955862)
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4/5 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53348049,                 digest='', mode=16877, mtime=1736955862, size=4096, type=1 where filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5'
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4/5 193 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' 
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53348050  AND filename != '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' 
SQL Query finished.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11' AND device = 2049 AND inode = 53348050 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53348050, NULL, 2, 33188, 2, 1736955862)
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11' AND device = 2049 AND inode = 53348050 OR filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c', 0, 'local', 'other', 'NEW', 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53348050, NULL, 2, 33188, 2, 1736955862)
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c 3cffcc0b0b2fe214aa51b2ed50e3c0511ff45104
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c', 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53348050, '3cffcc0b0b2fe214aa51b2ed50e3c0511ff45104', 33188, 11, 1736955862, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11', device = 2049, inode = 53348050, digest = '3cffcc0b0b2fe214aa51b2ed50e3c0511ff45104', mode = 33188, size = 11, mtime = 1736955862, type = 2
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
check_pure: filename: '<TESTBASE>/test/local/recursive' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
check_pure: filename: '<TESTBASE>/test/local/recursive/1' 69, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2' 71, cached path: '<TESTBASE>/test/local/recursive/' 69, 69.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3' 73, cached path: '<TESTBASE>/test/local/recursive/1/' 71, 71.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3/4' 75, cached path: '<TESTBASE>/test/local/recursive/1/2/' 73, 73.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3/4/5' 77, cached path: '<TESTBASE>/test/local/recursive/1/2/3/' 75, 75.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' 79, cached path: '<TESTBASE>/test/local/recursive/1/2/3/4/' 77, 77.
SQL Query finished.
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
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3/4/5' 77, cached path: '<TESTBASE>/test/local/recursive/1/2/3/4/5/' 79, 77.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/recursive/1/2/3/4/5
CONN peer < SIG %25test%25/recursive/1/2/3/4/5 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'ERROR (Path not found): %25test%25'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5 RC -13
PATH MISSING: '%25test%25'
PATH MISSING (decoded): '<TESTBASE>/test/local'
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
creating directory <TESTBASE>/test/local
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive
CONN peer < MKDIR %25test%25/recursive - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1
CONN peer < MKDIR %25test%25/recursive/1 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1/2
CONN peer < MKDIR %25test%25/recursive/1/2 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1/2/3
CONN peer < MKDIR %25test%25/recursive/1/2/3 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1/2/3/4
CONN peer < MKDIR %25test%25/recursive/1/2/3/4 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Fixed missing path for file <TESTBASE>/test/local/recursive/1/2/3/4/5
has links: file <TESTBASE>/test/local/recursive/1/2/3/4/5 checktxt 'v2:mtime=1736955862:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: -13
CONN peer < MKDIR %25test%25/recursive/1/2/3/4/5 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: -13.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5'  AND  myname = 'local' AND peername like 'peer'
Directory <TESTBASE>/test/local/recursive/1/2/3/4
Adding textlist_add_new: <TESTBASE>/test/local/recursive/1/2/3/4
Skipping textlist_add_new: <TESTBASE>/test/local/recursive/1/2/3/4
check_pure: filename: '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' 79, cached path: '<TESTBASE>/test/local/recursive/1/2/3/4/' 77, 77.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
CONN peer < SIG %25test%25/recursive/1/2/3/4/5/file.c user/group 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RC 32
has links: file <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c checktxt 'v2:mtime=1736955862:mode=33188:user=dennis:group=schafroth:type=reg:size=11' 1 1
CONN peer < CREATE %25test%25/recursive/1/2/3/4/5/file.c - 1234 1000 dennis schafroth 33188 - 11 
CONN peer > 'OK (send data).'
read_conn_status 'OK (send data).' 0
CREATE <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c 11
Sending octet-stream of 11 bytes
CONN peer < octet-stream 11

CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c'  AND  myname = 'local' AND peername like 'peer'
Directory <TESTBASE>/test/local/recursive/1/2/3/4/5
Adding textlist_add_new: <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2/3/4/5 1736955862.
CONN peer < SETTIME %25test%25/recursive/1/2/3/4/5 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2/3/4 1736955860.
CONN peer < SETTIME %25test%25/recursive/1/2/3/4 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
