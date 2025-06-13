cmd u "10 not hardlinked when updated" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2807888
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
get dirty host
SQL: SELECT peername FROM dirty WHERE myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '<TESTBASE>/test' OR filename LIKE '<TESTBASE>/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new/hardlinked_6 1 v2:mtime=1736296707:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new/was_hardlink 1 v2:mtime=1736296707:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new 1 v2:mtime=1736296708:mode=16877:user=dennis:group=schafroth:type=dir
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
check_pure: filename: '<TESTBASE>/test/local/new' 59, cached path: '(null)' 0, 0.
Locking '<TESTBASE>/test/local/new'
Redis reply: SET '<TESTBASE>/test/local/new' '1736296718' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new 1736296718
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/new' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new
CONN peer < SIG %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736296367:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736296718:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #-4).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Continue to rs_check <TESTBASE>/test/local/new 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/new', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/new
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new
has links: file <TESTBASE>/test/local/new checktxt 'v2:mtime=1736296708:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/new' on DIFF_META
CONN peer < MOD %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/new (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new'
Redis Reply: DEL '<TESTBASE>/test/local/new' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/new/was_hardlink' 63, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/new/was_hardlink'
Redis reply: SET '<TESTBASE>/test/local/new/was_hardlink' '1736296718' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new/was_hardlink 1736296718
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/new/was_hardlink' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/was_hardlink
CONN peer < SIG %25test%25/new/was_hardlink user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/was_hardlink RC 32
has links: file <TESTBASE>/test/local/new/was_hardlink checktxt 'v2:mtime=1736296707:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 1 1
CONN peer < PATCH %25test%25/new/was_hardlink - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/new/was_hardlink')
Receiving sig_file from peer..
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
Receiving 12 bytes (octet-stream)..
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
Clear dirty peer:<TESTBASE>/test/local/new/was_hardlink (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/was_hardlink'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new/was_hardlink'
Redis Reply: DEL '<TESTBASE>/test/local/new/was_hardlink' -> 1
Directory <TESTBASE>/test/local/new
Adding textlist_add_new: <TESTBASE>/test/local/new
Dirty (missing) item <TESTBASE>/test/local/new/hardlinked_6 HARDLINK <TESTBASE>/test/local/new/was_hardlink 0
Unable to HARDLINK peer:<TESTBASE>/test/local/new/hardlinked_6. File has disappeared since check.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_6
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_6
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '-'.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_6'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/hardlinked_6', 0, 'local', 'peer', 'RM', '(null)', NULL, NULL, NULL, 64, 0, -1, 1736296718)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/was_hardlink'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/local/new/was_hardlink', 0, 'local', 'peer', 'MARK', '(null)', NULL, NULL, NULL, 0, 0, -1, 1736296718)
make other dirty <TESTBASE>/test/local/new/was_hardlink
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/new 1736296718.
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1736296279.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closing: 0x555e02173470
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x555e02173150
Closed db: 0x555e02173150
Closed db: 0x555e02173150
csync_config_destroy
csync_config_destroy end
