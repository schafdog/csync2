cmd du "7 more files hardlinked (dry-run updated)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/new/new_file v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/hardlinked_5 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/hardlinked_4 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/hardlinked_3 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/hardlinked_2 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/hardlinked v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
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
Updating (MARK) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local
clear peer:<TESTBASE>/test/local on dry run
Clear dirty peer:<TESTBASE>/test/local (0)
Directory time <TESTBASE>/test <TESTBASE>/test/local
Updating (MARK) 'peer:<TESTBASE>/test/local/new' ''
CONN peer < SIG %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/new
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/new
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/new
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked' ''
CONN peer < SIG %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/hardlinked RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/hardlinked
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/hardlinked
clear peer:<TESTBASE>/test/local/new/hardlinked on dry run
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked (0)
Directory time <TESTBASE>/test/local/new <TESTBASE>/test/local/new/hardlinked
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_2' ''
CONN peer < SIG %25test%25/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_2 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/hardlinked_2
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/hardlinked_2
clear peer:<TESTBASE>/test/local/new/hardlinked_2 on dry run
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_2 (0)
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_3' ''
CONN peer < SIG %25test%25/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_3 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/hardlinked_3
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/hardlinked_3
clear peer:<TESTBASE>/test/local/new/hardlinked_3 on dry run
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_3 (0)
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_4' ''
CONN peer < SIG %25test%25/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_4 RC 32
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_5' ''
CONN peer < SIG %25test%25/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_5 RC 32
Updating (MARK) 'peer:<TESTBASE>/test/local/new/new_file' ''
CONN peer < SIG %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/new_file
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/new_file
clear peer:<TESTBASE>/test/local/new/new_file on dry run
Clear dirty peer:<TESTBASE>/test/local/new/new_file (0)
Skipping directories due to dry run
CONN peer < BYE

CONN peer > 'OK (cu_later).'
