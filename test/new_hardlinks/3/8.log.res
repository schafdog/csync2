cmd u "8 more files hardlinked (updated)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2807589
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
dirty: peer:<TESTBASE>/test/local/new/hardlinked_5 1 v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new/hardlinked_4 1 v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new 1 v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
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
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new 1736296703
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
Updating (MARK) 'peer:<TESTBASE>/test/local/new' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new
CONN peer < SIG %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
File is different on peer (cktxt char #-5).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
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
has links: file <TESTBASE>/test/local/new checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/new' on DIFF_META
CONN peer < MOD %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
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
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_4' 63, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/new/hardlinked_4'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new/hardlinked_4 1736296703
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_4
uid dennis gid schafroth
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_4' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/hardlinked_4
CONN peer < SIG %25test%25/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_4 RC 32
has links: file <TESTBASE>/test/local/new/hardlinked_4 checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' 6 1
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 56360963  AND filename != '<TESTBASE>/test/local/new/hardlinked_4' 
Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 5 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_4
SQL Query finished.
CONN peer < PATCH %25test%25/new/hardlinked_4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/new/hardlinked_4')
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
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_4 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_4'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new/hardlinked_4'
Redis Reply: DEL '<TESTBASE>/test/local/new/hardlinked_4' -> 1
Directory <TESTBASE>/test/local/new
Adding textlist_add_new: <TESTBASE>/test/local/new
check_pure: filename: '<TESTBASE>/test/local/new/hardlinked_5' 63, cached path: '<TESTBASE>/test/local/new/' 63, 63.
Locking '<TESTBASE>/test/local/new/hardlinked_5'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/new/hardlinked_5 1736296703
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_5
uid dennis gid schafroth
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_5' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/hardlinked_5
CONN peer < SIG %25test%25/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_5 RC 32
has links: file <TESTBASE>/test/local/new/hardlinked_5 checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' 6 1
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'local'  AND device = 2049  AND inode = 56360963  AND filename != '<TESTBASE>/test/local/new/hardlinked_5' 
Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 Different digest for  32a0617aab4c9fe725f1b5bc441291180ad25b73 5 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_5
SQL Query finished.
CONN peer < PATCH %25test%25/new/hardlinked_5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('<TESTBASE>/test/local/new/hardlinked_5')
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
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_5 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/new/hardlinked_5'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/new/hardlinked_5'
Redis Reply: DEL '<TESTBASE>/test/local/new/hardlinked_5' -> 1
Directory <TESTBASE>/test/local/new
Skipping textlist_add_new: <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/new 1736296367.
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
Redis closing: <PTR>
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: <PTR>
Closed db: <PTR>
Closed db: <PTR>
csync_config_destroy
csync_config_destroy end
