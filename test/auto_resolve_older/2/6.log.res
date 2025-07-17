cmd u "6 Fail to autoresolve (not older)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/auto/older/update_both v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=14 ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.0.0.2
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (NEW) 'peer:<TESTBASE>/test/local/auto/older/update_both' ''
CONN peer < SIG %25test%25/auto/older/update_both user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto/older/update_both RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=11'
<TESTBASE>/test/local/auto/older/update_both is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=11
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=14
Auto resolve method OLDER 3 for peer:<TESTBASE>/test/local/auto/older/update_both 
File peer:<TESTBASE>/test/local/auto/older/update_both: Lost autoresolve OLDER (3)
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/auto/older/update_both
rs_check: Found diff in sig at -32:-0
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            <TESTBASE>/test/local/auto/older/update_both
CONN peer < PATCH %25test%25/auto/older/update_both - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'File is also marked dirty here! (<TESTBASE>/test/peer/auto/older/update_both)'
While syncing file: <TESTBASE>/test/local/auto/older/update_both
ERROR from peer: File is also marked dirty here! (<TESTBASE>/test/peer/auto/older/update_both) rc: -11 
Auto resolve method OLDER 3 for peer:<TESTBASE>/test/local/auto/older/update_both 
CONN peer < GETTM 
CONN peer > 'OK (data_follows).'
CONN peer > '1591639200'
Do not auto-resolve conflict: Lost 'younger/older' test.
File stays in dirty state after autoresolve. Try again later...
Directory time <TESTBASE>/test/local/auto/older <TESTBASE>/test/local/auto/older/update_both
SETTIME peer:<TESTBASE>/test/local/auto/older
update_directory: Setting directory time <TESTBASE>/test/local/auto/older 0.
CONN peer < SETTIME %25test%25/auto/older 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
