cmd x "2 New local/type_change/new_file 'N' all" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2657836
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53346620 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346620, NULL, 1, 16877, 1, 1736899564)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53346620 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346620, NULL, 1, 16877, 1, 1736899564)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346620, NULL, 16877, 4096, 1736899564, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346620, digest = NULL, mode = 16877, size = 4096, mtime = 1736899564, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53346621 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346621, NULL, 1, 16877, 1, 1736899564)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53346621 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346621, NULL, 1, 16877, 1, 1736899564)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346621, NULL, 16877, 4096, 1736899564, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346621, digest = NULL, mode = 16877, size = 4096, mtime = 1736899564, type = 1
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53346622  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all' 
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53346622 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53346622, NULL, 2, 33188, 2, 1736899564)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53346622 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all', 0, 'local', 'other', 'NEW', 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53346622, NULL, 2, 33188, 2, 1736899564)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all eeb4df3d04063049b45ea11a12354a37e8740687
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all', 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53346622, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899564, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53346622, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899564, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/' 71, 53.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1736899564' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local 1736899564
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local checktxt 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' '1736899564' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change 1736899564
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
CONN peer < SIG %25test%25/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change checktxt 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/type_change - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' '1736899564' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all 1736899564
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
uid dennis gid schafroth
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all
CONN peer < SIG %25test%25/type_change/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all checktxt 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 1 1
CONN peer < PATCH %25test%25/type_change/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all')
Receiving sig_file from peer..
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
Receiving 12 bytes (chunked)..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 10 bytes
CONN peer < octet-stream 10

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file ''N'' all'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change 1736899564.
CONN peer < SETTIME %25test%25/type_change 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1736899564.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x5595291274a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x559529127180
Closed db: 0x559529127180
Closed db: 0x559529127180
csync_config_destroy
csync_config_destroy end
