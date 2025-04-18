cmd x "Both updated (peer dirty)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 65536 Flags: 1 PID: 2656484
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
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
csync_cmpchecktxt A: v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736899543:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local has changed: 
    v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736899543:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 65
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53089427 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53089427, NULL, 129, 16877, 1, 1736899544)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2049 AND inode = 53089427 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53089427, NULL, 1, 16877, 1, 1736899544)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53089427,                 digest='', mode=16877, mtime=1736899544, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/different
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/different /export/home/dennis/Projects/csync2/csync2/test/test/local/different
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 53089440  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' 
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53089440 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/different', 0, 'local', 'peer', 'NEW', 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53089440, NULL, 2, 33188, 2, 1736899544)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4' AND device = 2049 AND inode = 53089440 OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/different', 0, 'local', 'other', 'NEW', 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53089440, NULL, 2, 33188, 2, 1736899544)
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/local/different eeb4df3d04063049b45ea11a12354a37e8740687
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '/export/home/dennis/Projects/csync2/csync2/test/test/local/different', 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53089440, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899544, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53089440, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899544, type = 2
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/different rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 53.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1736899544' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local 1736899544
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local checktxt 'v2:mtime=1736899544:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' '1736899544' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/different 1736899544
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
uid dennis gid schafroth
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different
CONN peer < SIG %25test%25/different user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/different RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
Flags for gencheck: 112 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/different 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/different', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/different
rs_check: Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?F: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/different
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/different checktxt 'v2:mtime=1736899544:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 1 1
CONN peer < PATCH %25test%25/different - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different)'
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/different
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different) rc: -11 
read_conn_status 'File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different)' -11
before setown/settime/setmod on OK. rc -11 sig_rc: 8.
After setown/settime/setmod on OK. rc -11.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/different
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/different'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/different' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1736899544.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closing: 0x5575c05834a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5575c0583180
Closed db: 0x5575c0583180
Closed db: 0x5575c0583180
csync_config_destroy
csync_config_destroy end
