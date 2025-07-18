cmd u "8 more files hardlinked (updated)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/new/hardlinked_5 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/hardlinked_4 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MARK) 'peer:<TESTBASE>/test/local/new' ''
CONN peer < SIG %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: '' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/new
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/new
CONN peer < MOD %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/new
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_4' ''
CONN peer < SIG %25test%25/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_4 RC 32
Find same DEV INODE <TESTBASE>/test/local/new/hardlinked_4 already on peer and hardlink
4 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_4
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4 
do hardlink check <TESTBASE>/test/local/new/hardlinked_4 <TESTBASE>/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/new_file
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/new_file
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4
CONN peer < MKHARDLINK %25test%25/new/hardlinked_4 %25test%25/new/new_file 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_4 (0)
check_update_hardlink result: <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4: 0
Hardlinked peer:<TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_4
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_4 (0)
csync_find_update_hardlink: result: peer:<TESTBASE>/test/local/new/hardlinked_4 0
Returning after hard link check peer:<TESTBASE>/test/local/new/hardlinked_4 0
Directory time <TESTBASE>/test/local/new <TESTBASE>/test/local/new/hardlinked_4
Updating (MARK) 'peer:<TESTBASE>/test/local/new/hardlinked_5' ''
CONN peer < SIG %25test%25/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked_5 RC 32
Find same DEV INODE <TESTBASE>/test/local/new/hardlinked_5 already on peer and hardlink
5 files with same dev:inode (x:y) as file: <TESTBASE>/test/local/new/hardlinked_5
check same file (32) <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5 
Found HARDLINK <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5 
do hardlink check <TESTBASE>/test/local/new/hardlinked_5 <TESTBASE>/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/new_file
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/new_file
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5
CONN peer < MKHARDLINK %25test%25/new/hardlinked_5 %25test%25/new/new_file 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_5 (0)
check_update_hardlink result: <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5: 0
Hardlinked peer:<TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked_5
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked_5 (0)
csync_find_update_hardlink: result: peer:<TESTBASE>/test/local/new/hardlinked_5 0
Returning after hard link check peer:<TESTBASE>/test/local/new/hardlinked_5 0
SETTIME peer:<TESTBASE>/test/local/new
update_directory: Setting directory time <TESTBASE>/test/local/new 0.
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
