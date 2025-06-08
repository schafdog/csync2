cmd u "8 Update auto (older success)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2654598
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
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
DIRTY LOOKUP: '<TESTBASE>/test/local/auto/older/update_both' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto/older/update_both v2:mtime=1625767200:mode=33188:user=dennis:group=schafroth:type=reg:size=14 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/auto/older' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto/older v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/auto' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '<TESTBASE>/test/local' 53, cached path: '(null)' 0, 0.
Locking '<TESTBASE>/test/local'
Redis reply: SET '<TESTBASE>/test/local' '1736899513' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local 1736899513
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local is different on peer (cktxt char #1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
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
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local' on DIFF_META
CONN peer < MOD %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local'
Redis Reply: DEL '<TESTBASE>/test/local' -> 1
Directory <TESTBASE>/test
Adding textlist_add_new: <TESTBASE>/test
Skipping textlist_add_new: <TESTBASE>/test
check_pure: filename: '<TESTBASE>/test/local/auto' 59, cached path: '<TESTBASE>/test/' 53, 53.
Locking '<TESTBASE>/test/local/auto'
Redis reply: SET '<TESTBASE>/test/local/auto' '1736899513' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/auto 1736899513
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto
CONN peer < SIG %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/auto is different on peer (cktxt char #1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
Continue to rs_check <TESTBASE>/test/local/auto 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/auto', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/auto
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/auto
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto
has links: file <TESTBASE>/test/local/auto checktxt 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/auto' on DIFF_META
CONN peer < MOD %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/auto (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/auto'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/auto'
Redis Reply: DEL '<TESTBASE>/test/local/auto' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/auto/older' 64, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/auto/older'
Redis reply: SET '<TESTBASE>/test/local/auto/older' '1736899513' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/auto/older 1736899513
Match (+): <TESTBASE>/test/local/auto/older on <TESTBASE>/test/local/auto/older
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto/older' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/older
CONN peer < SIG %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto/older RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/local/auto/older is different on peer (cktxt char #1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local/auto/older on <TESTBASE>/test/local/auto/older
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/older
Match (+): <TESTBASE>/test/local/auto/older on <TESTBASE>/test/local/auto/older
Auto resolve method OLDER 3 for peer:<TESTBASE>/test/local/auto/older 
File peer:<TESTBASE>/test/local/auto/older: Won autoresolve OLDER (3)
Sould send FLUSH peer:<TESTBASE>/test/local/auto/older (won auto resolved)
Continue to rs_check <TESTBASE>/test/local/auto/older 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/auto/older', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/auto/older
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/auto/older
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/older
has links: file <TESTBASE>/test/local/auto/older checktxt 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/auto/older' on DIFF_META
CONN peer < MOD %25test%25/auto/older - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/auto/older (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/auto/older'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/auto/older'
Redis Reply: DEL '<TESTBASE>/test/local/auto/older' -> 1
Directory <TESTBASE>/test/local/auto
Adding textlist_add_new: <TESTBASE>/test/local/auto
Skipping textlist_add_new: <TESTBASE>/test/local/auto
check_pure: filename: '<TESTBASE>/test/local/auto/older/update_both' 70, cached path: '<TESTBASE>/test/local/auto/' 64, 64.
Locking '<TESTBASE>/test/local/auto/older/update_both'
Redis reply: SET '<TESTBASE>/test/local/auto/older/update_both' '1736899513' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/auto/older/update_both 1736899513
Match (+): <TESTBASE>/test/local/auto/older on <TESTBASE>/test/local/auto/older/update_both
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/auto/older/update_both' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/older/update_both
CONN peer < SIG %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 14 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto/older/update_both RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13 
csync_cmpchecktxt B: v2:mtime=1625767200:mode=33188:user=dennis:group=schafroth:type=reg:size=14 
<TESTBASE>/test/local/auto/older/update_both is different on peer (cktxt char #1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=13
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=14
Match (+): <TESTBASE>/test/local/auto/older on <TESTBASE>/test/local/auto/older/update_both
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/older/update_both
Match (+): <TESTBASE>/test/local/auto/older on <TESTBASE>/test/local/auto/older/update_both
Auto resolve method OLDER 3 for peer:<TESTBASE>/test/local/auto/older/update_both 
File peer:<TESTBASE>/test/local/auto/older/update_both: Won autoresolve OLDER (3)
Sould send FLUSH peer:<TESTBASE>/test/local/auto/older/update_both (won auto resolved)
Continue to rs_check <TESTBASE>/test/local/auto/older/update_both 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/auto/older/update_both', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/auto/older/update_both
rs_check: Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?B: peer            <TESTBASE>/test/local/auto/older/update_both
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/older/update_both
has links: file <TESTBASE>/test/local/auto/older/update_both checktxt 'v2:mtime=1625767200:mode=33188:user=dennis:group=schafroth:type=reg:size=14' 1 1
CONN peer < PATCH %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 14 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/auto/older/update_both')
Receiving sig_file from peer..
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
Receiving 32 bytes (chunked)..
Got 32 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 20 bytes
CONN peer < octet-stream 20

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 24.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/auto/older/update_both (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/auto/older/update_both'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/auto/older/update_both'
Redis Reply: DEL '<TESTBASE>/test/local/auto/older/update_both' -> 1
Directory <TESTBASE>/test/local/auto/older
Adding textlist_add_new: <TESTBASE>/test/local/auto/older
Match (+): <TESTBASE>/test/local/auto/older on <TESTBASE>/test/local/auto/older
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/auto/older 1625767200.
CONN peer < SETTIME %25test%25/auto/older 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/auto 1625767200.
CONN peer < SETTIME %25test%25/auto 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1625767200.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closing: 0x562ec418f4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x562ec418f180
Closed db: 0x562ec418f180
Closed db: 0x562ec418f180
csync_config_destroy
csync_config_destroy end
