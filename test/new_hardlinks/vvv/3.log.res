cmd u "3 two new files hardlinked (update)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2799234
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
SQL: SELECT filename, operation, op, other, checktxt, digest, forced, (op & 639) as type FROM dirty WHERE   (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/%')  AND  peername = 'peer' AND myname = 'local' AND peername NOT IN (SELECT host FROM host WHERE status = 1) ORDER by type DESC, filename DESC
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink 1 v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 1 v2:mtime=1736295349:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 1 v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 1 v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 1 v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 1 v2:mtime=1736295344:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 1 v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked 1 v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new 1 v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local 1 v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1736296298' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local 1736296298
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local checktxt 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '1736296298' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/new 1736296298
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new
CONN peer < SIG %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/new checktxt 'v2:mtime=1736296279:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' 63, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '1736296298' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked 1736296298
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
uid dennis gid schafroth
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
CONN peer < SIG %25test%25/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked checktxt 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 2 1
CONN peer < PATCH %25test%25/new/hardlinked - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked')
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
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' 63, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/' 63, 63.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '1736296298' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 1736296298
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
uid dennis gid schafroth
Updating (MOD) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file checktxt 'v2:mtime=1736296279:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 2 1
CONN peer < PATCH %25test%25/new/new_file - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (sending sig).'
read_conn_status 'OK (sending sig).' 0
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file')
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
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 RM  0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
CONN peer < SIG %25test%25/new/hardlinked_2 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2/%')  AND  hostname = 'local'
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 RM  0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
CONN peer < SIG %25test%25/new/hardlinked_3 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3/%')  AND  hostname = 'local'
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 RM  0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
CONN peer < SIG %25test%25/new/hardlinked_4 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4/%')  AND  hostname = 'local'
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 RM  0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
CONN peer < SIG %25test%25/new/hardlinked_5 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5/%')  AND  hostname = 'local'
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 RM  0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
CONN peer < SIG %25test%25/new/hardlinked_6 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6/%')  AND  hostname = 'local'
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6/. rc: 4
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink RM  0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
CONN peer < SIG %25test%25/new/was_hardlink 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink is already up to date on peer.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink/%')  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink/%')  AND  hostname = 'local'
DELETE (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink) Last dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink/. rc: 4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/new
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/new 1736296279.
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1736296279.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closing: 0x564f462bc470
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x564f462bc150
Closed db: 0x564f462bc150
Closed db: 0x564f462bc150
csync_config_destroy
csync_config_destroy end
