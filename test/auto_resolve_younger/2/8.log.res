cmd u "8 Update auto (younger success)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/auto/younger/local_oldest v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=14 ''
dirty: peer:<TESTBASE>/test/local/auto/younger v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local/auto v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: '' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local
CONN peer < MOD %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Directory time <TESTBASE>/test <TESTBASE>/test/local
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto' ''
CONN peer < SIG %25test%25/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/auto is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: '' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/auto
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/auto
CONN peer < MOD %25test%25/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/auto (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/auto
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/auto/younger' ''
CONN peer < SIG %25test%25/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto/younger RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/auto/younger is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
Auto resolve method YOUNGER 2 for peer:<TESTBASE>/test/local/auto/younger 
File peer:<TESTBASE>/test/local/auto/younger: Won autoresolve YOUNGER (2)
Send FLUSH peer:<TESTBASE>/test/local/auto/younger (won auto resolved)
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: '' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/auto/younger
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/auto/younger
CONN peer < MOD %25test%25/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/auto/younger (0)
Directory time <TESTBASE>/test/local/auto <TESTBASE>/test/local/auto/younger
Updating (NEW) 'peer:<TESTBASE>/test/local/auto/younger/local_oldest' ''
CONN peer < SIG %25test%25/auto/younger/local_oldest user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/auto/younger/local_oldest RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=13'
<TESTBASE>/test/local/auto/younger/local_oldest is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=13
>>> LOCAL:	v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=14
Auto resolve method YOUNGER 2 for peer:<TESTBASE>/test/local/auto/younger/local_oldest 
File peer:<TESTBASE>/test/local/auto/younger/local_oldest: Won autoresolve YOUNGER (2)
Send FLUSH peer:<TESTBASE>/test/local/auto/younger/local_oldest (won auto resolved)
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/auto/younger/local_oldest
rs_check: Found diff in sig at -32:-0
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            <TESTBASE>/test/local/auto/younger/local_oldest
CONN peer < PATCH %25test%25/auto/younger/local_oldest - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (sending sig).'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer < octet-stream 20

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/auto/younger/local_oldest (0)
Directory time <TESTBASE>/test/local/auto/younger <TESTBASE>/test/local/auto/younger/local_oldest
SETTIME peer:<TESTBASE>/test/local/auto/younger
update_directory: Setting directory time <TESTBASE>/test/local/auto/younger 0.
CONN peer < SETTIME %25test%25/auto/younger 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/auto
update_directory: Setting directory time <TESTBASE>/test/local/auto 0.
CONN peer < SETTIME %25test%25/auto 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
