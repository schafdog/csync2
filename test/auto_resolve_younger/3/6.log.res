cmd u "6 Fail to autoresolve (not younger)" local peer test
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4 Flags: 1 PID: 2654152
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
DIRTY LOOKUP: '<TESTBASE>/test/local/auto/younger/local_oldest' ''
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto/younger/local_oldest v2:mtime=1620424800:mode=33188:user=dennis:group=schafroth:type=reg:size=12 ''
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
check_pure: filename: '<TESTBASE>/test/local/auto/younger/local_oldest' 72, cached path: '(null)' 0, 0.
Locking '<TESTBASE>/test/local/auto/younger/local_oldest'
Redis reply: SET '<TESTBASE>/test/local/auto/younger/local_oldest' '1736899510' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/local/auto/younger/local_oldest 1736899510
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/auto/younger/local_oldest' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/younger/local_oldest
CONN peer < SIG %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 12 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto/younger/local_oldest RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1623103200:mode=33188:user=dennis:group=schafroth:type=reg:size=13 
csync_cmpchecktxt B: v2:mtime=1620424800:mode=33188:user=dennis:group=schafroth:type=reg:size=12 
<TESTBASE>/test/local/auto/younger/local_oldest is different on peer (cktxt char #1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=13
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=12
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/younger/local_oldest
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
Auto resolve method YOUNGER 2 for peer:<TESTBASE>/test/local/auto/younger/local_oldest 
File peer:<TESTBASE>/test/local/auto/younger/local_oldest: Lost autoresolve YOUNGER (2)
Continue to rs_check <TESTBASE>/test/local/auto/younger/local_oldest 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/auto/younger/local_oldest', 1 [regular file])
rs_check: Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/auto/younger/local_oldest
rs_check: Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?B: peer            <TESTBASE>/test/local/auto/younger/local_oldest
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/younger/local_oldest
has links: file <TESTBASE>/test/local/auto/younger/local_oldest checktxt 'v2:mtime=1620424800:mode=33188:user=dennis:group=schafroth:type=reg:size=12' 1 1
CONN peer < PATCH %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 12 
CONN peer > 'File is also marked dirty here! (<TESTBASE>/test/peer/auto/younger/local_oldest)'
While syncing file: <TESTBASE>/test/local/auto/younger/local_oldest
ERROR from peer: File is also marked dirty here! (<TESTBASE>/test/peer/auto/younger/local_oldest) rc: -11 
read_conn_status 'File is also marked dirty here! (<TESTBASE>/test/peer/auto/younger/local_oldest)' -11
before setown/settime/setmod on OK. rc -11 sig_rc: 24.
After setown/settime/setmod on OK. rc -11.
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto/younger/local_oldest
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger/local_oldest
Auto resolve method YOUNGER 2 for peer:<TESTBASE>/test/local/auto/younger/local_oldest CONN peer < GETTM 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > '1623103200'
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
Deleting key '<TESTBASE>/test/local/auto/younger/local_oldest'
Redis Reply: DEL '<TESTBASE>/test/local/auto/younger/local_oldest' -> 1
Directory <TESTBASE>/test/local/auto/younger
Adding textlist_add_new: <TESTBASE>/test/local/auto/younger
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/auto/younger 1620424800.
CONN peer < SETTIME %25test%25/auto/younger 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closing: 0x55f700fd74a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f700fd7180
Closed db: 0x55f700fd7180
Closed db: 0x55f700fd7180
csync_config_destroy
csync_config_destroy end
