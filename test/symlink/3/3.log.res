cmd x "Bad link" local peer test
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
GIT:           b6533f8fb67daf9e5335a557b1f91c7711d10543-dirty
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 65
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 52709148, NULL, 129, 16877, 1, 1748673363)
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local (not synced) .
Found row: file '<TESTBASE>/test/local' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 52709148, NULL, 1, 16877, 1, 1748673363)
INSERT/UPDATE: <TESTBASE>/test/local 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device=2049, inode=52709148,                 digest='', mode=16877, mtime=1748673363, size=4096, type=1 where filename = '<TESTBASE>/test/local'
Inserted/updated <TESTBASE>/test/local rows matched: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all.link
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/new_file 'N' all.link' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new_file ''N'' all.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/new_file 'N' all' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/new_file ''N'' all' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/bad.link' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'local' AND filename = '<TESTBASE>/test/local/bad.link' 
New file: <TESTBASE>/test/local/bad.link
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
WARN: stat failed. op: 2
mark other operation: 'RM?' 'peer:<TESTBASE>/test/local/bad.link' 'missing'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/bad.link') AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/bad.link'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/bad.link', 0, 'local', 'peer', 'NEW', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', 2049, 52710371, 'missing', 2, 41471, 6, 1748673363)
WARN: stat failed. op: 2
mark other operation: 'RM?' 'other:<TESTBASE>/test/local/bad.link' 'missing'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'local' AND (checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/local/bad.link') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/bad.link'  AND  myname = 'local' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/bad.link', 0, 'local', 'other', 'NEW', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', 2049, 52710371, 'missing', 2, 41471, 6, 1748673363)
INSERT/UPDATE: <TESTBASE>/test/local/bad.link (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('local', '<TESTBASE>/test/local/bad.link', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', 2049, 52710371, NULL, 41471, 7, 1748673363, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', device = 2049, inode = 52710371, digest = NULL, mode = 41471, size = 7, mtime = 1748673363, type = 6
Inserted/updated <TESTBASE>/test/local/bad.link rows matched: 0
Checking for deleted files <TESTBASE>/test recursive.
file <TESTBASE>/test encoded <TESTBASE>/test. Hostname: local 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  hostname = 'local' ORDER BY filename
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
check_pure: filename: '<TESTBASE>/test/local/bad.link' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all
check_pure: filename: '<TESTBASE>/test/local/new_file 'N' all' 59, cached path: '<TESTBASE>/test/local/' 59, 59.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new_file 'N' all.link
check_pure: filename: '<TESTBASE>/test/local/new_file 'N' all.link' 59, cached path: '<TESTBASE>/test/local/' 59, 59.
SQL Query finished.
csync_file_args: '<TESTBASE>/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/bad.link' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/bad.link v2:mtime=xxxxxxxxxx:mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
SQL Query finished.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Using alternative port to localhost:30861 
Connecting to localhost:30861 
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '<TESTBASE>/test/local/' 59, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Continue to rs_check <TESTBASE>/test/local 16
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
?M: peer            <TESTBASE>/test/local
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local' on DIFF_META
CONN peer < MOD %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
Directory <TESTBASE>/test
Adding textlist_add_new: <TESTBASE>/test
Skipping textlist_add_new: <TESTBASE>/test
check_pure: filename: '<TESTBASE>/test/local/bad.link' 59, cached path: '<TESTBASE>/test/' 53, 53.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/bad.link
uid dennis gid schafroth
Updating (LINK) 'peer:<TESTBASE>/test/local/bad.link' 'missing'
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/bad.link
CONN peer < SIG %25test%25/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/bad.link RC 32
has links: file <TESTBASE>/test/local/bad.link checktxt 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing' 1 0
CONN peer < MKLINK %25test%25/bad.link 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
before setown/settime/setmod on OK. rc 0 sig_rc: 32.
CONN peer < SETOWN %25test%25/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Skipping setmod on link peer:<TESTBASE>/test/local/bad.link
CONN peer < SETTIME %25test%25/bad.link 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
After setown/settime/setmod on OK. rc 0.
Clear dirty peer:<TESTBASE>/test/local/bad.link (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/bad.link'  AND  myname = 'local' AND peername like 'peer'
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1748673363.
CONN peer < SETTIME %25test%25 
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
