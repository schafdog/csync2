cmd u "3 two new files hardlinked (update)" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/new/hardlinked v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/new_file v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local (0)
Directory time <TESTBASE>/test <TESTBASE>/test/local
Updating (MKDIR) 'peer:<TESTBASE>/test/local/new' ''
CONN peer < SIG %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new RC 32
CONN peer < MKDIR %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/new
Updating (NEW) 'peer:<TESTBASE>/test/local/new/new_file' ''
CONN peer < SIG %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/new_file RC 32
CONN peer < CREATE %25test%25/new/new_file - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/new/new_file 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
PATCH hardlink: checking dirty hardlinks: peer:<TESTBASE>/test/local/new/new_file 0 0 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
Clear dirty peer:<TESTBASE>/test/local/new/new_file (0)
Directory time <TESTBASE>/test/local/new <TESTBASE>/test/local/new/new_file
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/new/hardlinked' '<TESTBASE>/test/local/new/new_file'
CONN peer < SIG %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/hardlinked RC 32
do hardlink check <TESTBASE>/test/local/new/hardlinked <TESTBASE>/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/new/new_file
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/new/new_file
Hardlinking peer <TESTBASE>/test/local/new/new_file -> <TESTBASE>/test/local/new/hardlinked
CONN peer < MKHARDLINK %25test%25/new/hardlinked %25test%25/new/new_file 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked (0)
clear dirty HARDLINK <TESTBASE>/test/local/new/hardlinked <TESTBASE>/test/local/new/new_file
Clear dirty peer:<TESTBASE>/test/local/new/hardlinked (0)
Clear dirty peer:<TESTBASE>/test/local/new/new_file (0)
SETTIME peer:<TESTBASE>/test/local/new
update_directory: Setting directory time <TESTBASE>/test/local/new 0.
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
