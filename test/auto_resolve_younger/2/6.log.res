cmd u "6 Fail to autoresolve (not younger)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=12 ''
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
/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest is different on peer (cktxt char #1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=13
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=12
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest: Lost autoresolve YOUNGER (2)
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
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
