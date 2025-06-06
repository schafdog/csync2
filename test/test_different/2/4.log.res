cmd u "Both updated (peer still dirty)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/different' ''
CONN peer < SIG %25test%25/different user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/different RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/different
rs_check: Found diff in sig at -32:-0
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?F: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/different
CONN peer < PATCH %25test%25/different - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different)'
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/different
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different) rc: -11 
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
