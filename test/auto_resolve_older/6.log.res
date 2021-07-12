cmd u "6 Fail to autoresolve (not older)" local peer test
Mode: 4 Flags: 1 PID: 903258
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           938bbc93130031c2e2ed4d0fbda2e0ef326c803f-dirty
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both 1 v2:mtime=1615676400:mode=33188:user=dennis:group=schafroth:type=reg:size=14
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 1 v2:mtime=1626114719:mode=16877:user=dennis:group=schafroth:type=dir
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '1626114720' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 1626114720
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' ''
CONN peer < SIG %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 1626114719 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older RC 0
CONN peer > 'v2%3Amtime=1615590000%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=1615590000:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1626114719:mode=16877:user=dennis:group=schafroth:type=dir
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older: Lost autoresolve OLDER (3)
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
before setown/settime/setmod on OK. rc 16.
After setown/settime/setmod on OK. rc 16.
csync_update_file_mod: Unhandled rc: 16
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '1626114720' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both 1626114720
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' ''
CONN peer < SIG %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 1615676400 14 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both RC 0
CONN peer > 'v2%3Amtime=1615590000%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=11'
File is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=1615590000:mode=33188:user=dennis:group=schafroth:type=reg:size=11
>>> LOCAL:	v2:mtime=1615676400:mode=33188:user=dennis:group=schafroth:type=reg:size=14
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both: Lost autoresolve OLDER (3)
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both', 1 [regular file])
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
rs_check: Found diff in sig at -32:-0
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
CONN peer < PATCH %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 1615676400 14 
CONN peer > 'File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both)'
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both) rc: -11 
before setown/settime/setmod on OK. rc -11.
After setown/settime/setmod on OK. rc -11.
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both CONN peer < GETTM 
CONN peer > 'OK (data_follows).'
CONN peer > '1615590000'
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' -> 1
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 1626114719.
CONN peer < SETTIME %25test%25/auto/older 
CONN peer > 'OK (cmd_finished).'
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 1626114718.
CONN peer < SETTIME %25test%25/auto 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
