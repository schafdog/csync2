cmd u "update: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2798226
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/.Trash/cur' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/cur' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur' 67, cached path: '(null)' 0, 0.
Locking '<TESTBASE>/test/local/Maildir/cur'
Redis reply: SET '<TESTBASE>/test/local/Maildir/cur' '1736905949' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/cur 1736905949
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736905944:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/Maildir/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Continue to rs_check <TESTBASE>/test/local/Maildir/cur 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/Maildir/cur', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/cur
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/Maildir/cur
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/cur
has links: file <TESTBASE>/test/local/Maildir/cur checktxt 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/Maildir/cur' on DIFF_META
CONN peer < MOD %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/cur'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/cur' -> 1
Directory <TESTBASE>/test/local/Maildir
Adding textlist_add_new: <TESTBASE>/test/local/Maildir
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash/cur' 74, cached path: '<TESTBASE>/test/local/Maildir/' 67, 67.
Locking '<TESTBASE>/test/local/Maildir/.Trash/cur'
Redis reply: SET '<TESTBASE>/test/local/Maildir/.Trash/cur' '1736905949' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/.Trash/cur 1736905949
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/Maildir/.Trash/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Continue to rs_check <TESTBASE>/test/local/Maildir/.Trash/cur 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/Maildir/.Trash/cur', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/.Trash/cur
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/Maildir/.Trash/cur
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/.Trash/cur
has links: file <TESTBASE>/test/local/Maildir/.Trash/cur checktxt 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' on DIFF_META
CONN peer < MOD %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/.Trash/cur'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/.Trash/cur' -> 1
Directory <TESTBASE>/test/local/Maildir/.Trash
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/.Trash
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir/.Trash
check_pure: filename: '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 71, cached path: '<TESTBASE>/test/local/Maildir/.Trash/' 74, 67.
Locking '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis reply: SET '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '1736905949' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1736905949
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
uid dennis gid schafroth
Updating (MV) 'peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
CONN peer < MV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Succes: MV <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' -> 1
Directory <TESTBASE>/test/local/Maildir/cur
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/cur
Directory <TESTBASE>/test/local/Maildir/cur
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir/cur
check_pure: filename: '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 78, cached path: '<TESTBASE>/test/local/Maildir/cur/' 71, 67.
Locking '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
Redis reply: SET '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '1736905949' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 1736905949
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
uid dennis gid schafroth
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN peer < SIG %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S RC 32
has links: file <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S checktxt 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8' 2 1
do hardlink check <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN peer < SIG %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8'
Flags for gencheck: 112 
Continue to rs_check <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 0
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Hardlinking peer <TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN peer < MKHARDLINK %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'local' AND peername like 'peer'
clear dirty HARDLINK
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
Redis Reply: DEL '<TESTBASE>/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' -> 1
Directory <TESTBASE>/test/local/Maildir/.Trash/cur
Adding textlist_add_new: <TESTBASE>/test/local/Maildir/.Trash/cur
Directory <TESTBASE>/test/local/Maildir/cur
Skipping textlist_add_new: <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash/cur 1736905947.
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/cur 1736905947.
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash 1736905921.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 1736905921.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closing: 0x55a6ff6b84a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55a6ff6b8180
Closed db: 0x55a6ff6b8180
Closed db: 0x55a6ff6b8180
csync_config_destroy
csync_config_destroy end
