cmd u "4 create directories (update)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2654045
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
DIRTY LOOKUP: '<TESTBASE>/test/local/auto/younger' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto/younger v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/auto' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir ''
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
Redis reply: SET '<TESTBASE>/test/local' '1736899509' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local 1736899509
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
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
check_pure: filename: '<TESTBASE>/test/local/auto' 59, cached path: '<TESTBASE>/test/' 53, 53.
Locking '<TESTBASE>/test/local/auto'
Redis reply: SET '<TESTBASE>/test/local/auto' '1736899509' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/auto 1736899509
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/auto' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto
CONN peer < SIG %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/auto RC 32
has links: file <TESTBASE>/test/local/auto checktxt 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' 3 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/auto (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/auto'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/auto'
Redis Reply: DEL '<TESTBASE>/test/local/auto' -> 1
Directory <TESTBASE>/test/local
Adding textlist_add_new: <TESTBASE>/test/local
Skipping textlist_add_new: <TESTBASE>/test/local
check_pure: filename: '<TESTBASE>/test/local/auto/younger' 64, cached path: '<TESTBASE>/test/local/' 59, 59.
Locking '<TESTBASE>/test/local/auto/younger'
Redis reply: SET '<TESTBASE>/test/local/auto/younger' '1736899509' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/auto/younger 1736899509
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/auto/younger' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/younger
CONN peer < SIG %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/auto/younger RC 32
has links: file <TESTBASE>/test/local/auto/younger checktxt 'v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 32
CONN peer < MKDIR %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/auto/younger (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/local/auto/younger'  AND  myname = 'local' AND peername like 'peer'
Deleting key '<TESTBASE>/test/local/auto/younger'
Redis Reply: DEL '<TESTBASE>/test/local/auto/younger' -> 1
Directory <TESTBASE>/test/local/auto
Adding textlist_add_new: <TESTBASE>/test/local/auto
Skipping textlist_add_new: <TESTBASE>/test/local/auto
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/auto 1620424800.
CONN peer < SETTIME %25test%25/auto 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 1620424800.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closing: 0x56541226b4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x56541226b180
Closed db: 0x56541226b180
Closed db: 0x56541226b180
csync_config_destroy
csync_config_destroy end
