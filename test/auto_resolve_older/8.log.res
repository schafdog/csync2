cmd u "9 Update auto (older success)" local peer test
Mode: 4 Flags: 1 PID: 739448
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           c6a3a0a88ccc797172be133f3ce41f43cf1b73c8-dirty
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both 1 0xb514d0
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' '1626105281' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both 1626105281
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' ''
CONN peer < SIG %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 1626105279 14 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both RC 0
CONN peer > 'v2%3Amtime=1626105280%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13'
File is different on peer (cktxt char #1).
>>> peer:	v2:mtime=1626105280:mode=33188:user=dennis:group=schafroth:type=reg:size=13
>>> LOCAL:	v2:mtime=1626105279:mode=33188:user=dennis:group=schafroth:type=reg:size=14
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both: Won autoresolve OLDER (3)
Sould send FLUSH peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both (won auto resolved)
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both', 1 [regular file])
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
rs_check: Found diff in sig at -32:-0
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both
CONN peer < PATCH %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 1626105279 14 
CONN peer > 'OK (send_data).'
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
CONN peer < octet-stream 20

CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both (0)
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/update_both' -> 1
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 1626105279.
CONN peer < SETTIME %25test%25/auto/older 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
