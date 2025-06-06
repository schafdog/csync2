cmd u "5 Read and deleted (update)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2387999
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
GIT:           09e7f4b9db150a32e5a70be67ab3aa9902c0692d-dirty
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
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp v2:mtime=1736888508:mode=16877:user=dennis:group=schafroth:type=dir ''
DIRTY LOOKUP: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur v2:mtime=1736888508:mode=16877:user=dennis:group=schafroth:type=dir ''
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '(null)' 0, 0.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '1736888510' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1736888510
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736888508:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur checktxt 'v2:mtime=1736888508:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' on DIFF_META
CONN peer < MOD %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '1736888510' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 1736888510
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736888508:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp checktxt 'v2:mtime=1736888508:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' on DIFF_META
CONN peer < MOD %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '1736888510' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1736888510
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736888507:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur checktxt 'v2:mtime=1736888509:mode=16877:user=dennis:group=schafroth:type=dir' 2 0
MKDIR rc: 16
Doing MOD 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' on DIFF_META
CONN peer < MOD %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '1736888510' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 1736888510
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
uid dennis gid schafroth
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'
CONN peer < MV %25test%25/Maildir/tmp/123 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'  AND  myname = 'local' AND peername like 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' 78, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/' 71, 67.
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '1736888510' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab 1736888510
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab
uid dennis gid schafroth
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab
CONN peer < SIG %25test%25/Maildir/.Trash/cur/123,Sab user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab RC 32
has links: file /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab checktxt 'v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4' 2 1
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
CONN peer < SIG %25test%25/Maildir/cur/123,Sab user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=0'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=0 
csync_cmpchecktxt B: v2:mtime=1736888507:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=0
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
rs_check: Signature size differs: local=32, peer=12
rs_check: Receiving signature 12 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Got 12 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Remote HARDLINK file (/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab) not identical. Need patching. RC = 24
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab'  AND  myname = 'local' AND peername like 'peer'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab (0)
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'  AND  myname = 'local' AND peername like 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' -> 1
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1736888509.
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 1736888508.
CONN peer < SETTIME %25test%25/Maildir/tmp 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1736888508.
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1736888507.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1736888507.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closing: 0x55886b7774a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55886b777180
Closed db: 0x55886b777180
Closed db: 0x55886b777180
csync_config_destroy
csync_config_destroy end
