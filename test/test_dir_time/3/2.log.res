cmd x "New directory" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2656815
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
New file: <TESTBASE>/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090891 OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090891, NULL, 1, 16877, 1, 1736899548)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090891 OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090891, NULL, 1, 16877, 1, 1736899548)
INSERT/UPDATE: <TESTBASE>/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090891, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53090891, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/usr' 
New file: <TESTBASE>/test/local/usr
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090892 OR filename = '<TESTBASE>/test/local/usr') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090892, NULL, 1, 16877, 1, 1736899548)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090892 OR filename = '<TESTBASE>/test/local/usr') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090892, NULL, 1, 16877, 1, 1736899548)
INSERT/UPDATE: <TESTBASE>/test/local/usr (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/usr', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090892, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53090892, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Inserted/updated <TESTBASE>/test/local/usr rows matched: 0
csync_check_dir: <TESTBASE>/test/local/usr 193 
Checking <TESTBASE>/test/local/usr/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/usr/local' 
New file: <TESTBASE>/test/local/usr/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090893 OR filename = '<TESTBASE>/test/local/usr/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090893, NULL, 1, 16877, 1, 1736899548)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090893 OR filename = '<TESTBASE>/test/local/usr/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090893, NULL, 1, 16877, 1, 1736899548)
INSERT/UPDATE: <TESTBASE>/test/local/usr/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/usr/local', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090893, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53090893, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Inserted/updated <TESTBASE>/test/local/usr/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local/usr/local 193 
Checking <TESTBASE>/test/local/usr/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/usr/local/sbin' 
New file: <TESTBASE>/test/local/usr/local/sbin
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local/sbin
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local/sbin
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/usr/local/sbin' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090894 OR filename = '<TESTBASE>/test/local/usr/local/sbin') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local/sbin'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr/local/sbin', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090894, NULL, 1, 16877, 1, 1736899548)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/usr/local/sbin' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53090894 OR filename = '<TESTBASE>/test/local/usr/local/sbin') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local/sbin'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/usr/local/sbin', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090894, NULL, 1, 16877, 1, 1736899548)
INSERT/UPDATE: <TESTBASE>/test/local/usr/local/sbin (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/usr/local/sbin', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090894, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53090894, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Inserted/updated <TESTBASE>/test/local/usr/local/sbin rows matched: 0
csync_check_dir: <TESTBASE>/test/local/usr/local/sbin 193 
Checking <TESTBASE>/test/local/usr/local/sbin/* ..
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
check_pure: filename: '<TESTBASE>/test/local/usr' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
check_pure: filename: '<TESTBASE>/test/local/usr/local' 63, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local/sbin
check_pure: filename: '<TESTBASE>/test/local/usr/local/sbin' 69, cached path: '<TESTBASE>/test/local/usr/' 63, 63.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/usr/local/sbin' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/usr/local/sbin v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/usr/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/usr/local v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/usr' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/usr v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '<TESTBASE>/test/local/usr/local/' 69, 53.
Locking '<TESTBASE>/test/local'
Redis reply: SET '<TESTBASE>/test/local' '1736899548' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local 1736899548
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
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
check_pure: filename: '<TESTBASE>/test/local/usr' 59, cached path: '<TESTBASE>/test/' 53, 53.
Locking '<TESTBASE>/test/local/usr'
Redis reply: SET '<TESTBASE>/test/local/usr' '1736899548' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/usr 1736899548
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/usr
CONN peer < SIG %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr RC 32
has links: file <TESTBASE>/test/local/usr checktxt 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/usr - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/usr (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/usr'
Redis Reply: DEL '<TESTBASE>/test/local/usr' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/usr/local' 63, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/usr/local'
Redis reply: SET '<TESTBASE>/test/local/usr/local' '1736899548' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/usr/local 1736899548
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/usr/local
CONN peer < SIG %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr/local RC 32
has links: file <TESTBASE>/test/local/usr/local checktxt 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/usr/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/usr/local'
Redis Reply: DEL '<TESTBASE>/test/local/usr/local' -> 1
Directory <TESTBASE>/test/local/usr
Adding textlist_add_new: <TESTBASE>/test/local/usr
Skipping textlist_add_new: <TESTBASE>/test/local/usr
check_pure: filename: '<TESTBASE>/test/local/usr/local/sbin' 69, cached path: '<TESTBASE>/test/local/usr/' 63, 63.
Locking '<TESTBASE>/test/local/usr/local/sbin'
Redis reply: SET '<TESTBASE>/test/local/usr/local/sbin' '1736899549' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/usr/local/sbin 1736899549
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local/sbin
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/usr/local/sbin' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/usr/local/sbin
CONN peer < SIG %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/usr/local/sbin RC 32
has links: file <TESTBASE>/test/local/usr/local/sbin checktxt 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/usr/local/sbin (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/usr/local/sbin'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/usr/local/sbin'
Redis Reply: DEL '<TESTBASE>/test/local/usr/local/sbin' -> 1
Directory <TESTBASE>/test/local/usr/local
Adding textlist_add_new: <TESTBASE>/test/local/usr/local
Skipping textlist_add_new: <TESTBASE>/test/local/usr/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/usr/local 1736899548.
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/usr
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/usr 1736899548.
CONN peer < SETTIME %25test%25/usr 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1736899548.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x558bc5daa4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x558bc5daa180
Closed db: 0x558bc5daa180
Closed db: 0x558bc5daa180
csync_config_destroy
csync_config_destroy end
