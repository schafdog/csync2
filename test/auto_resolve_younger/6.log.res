cmd u "6 Fail to autoresolve (not younger)" local peer test
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' ''
CONN peer < SIG %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 12 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13'
File is different on peer (cktxt char #3).
>>> peer:	v2:mtime=1623103200:mode=33188:user=dennis:group=schafroth:type=reg:size=13
>>> LOCAL:	v2:mtime=1620424800:mode=33188:user=dennis:group=schafroth:type=reg:size=12
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest: Lost autoresolve YOUNGER (2)
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest', 1 [regular file])
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
rs_check: Found diff in sig at -32:-0
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
CONN peer < PATCH %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 12 
CONN peer > 'File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest)'
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest) rc: -11 
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest CONN peer < GETTM 
CONN peer > 'OK (data_follows).'
CONN peer > '1623103200'
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
CONN peer < SETTIME %25test%25/auto/younger 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
