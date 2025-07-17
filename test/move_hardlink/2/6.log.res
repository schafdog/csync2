cmd u "5 Read and deleted (update)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur/123,Sab v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
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
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/Maildir/.Trash/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/.Trash/cur
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/.Trash/cur
CONN peer < MOD %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur (0)
Directory time <TESTBASE>/test/local/Maildir/.Trash <TESTBASE>/test/local/Maildir/.Trash/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
CONN peer < SIG %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/Maildir/cur is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/cur
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/cur
CONN peer < MOD %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
Directory time <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir/cur
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
CONN peer < SIG %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
<TESTBASE>/test/local/Maildir/tmp is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/tmp
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/Maildir/tmp
CONN peer < MOD %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp (0)
Updating (MV) 'peer:<TESTBASE>/test/local/Maildir/cur/123,Sab' '<TESTBASE>/test/local/Maildir/tmp/123'
CONN peer < MV %25test%25/Maildir/tmp/123 
CONN peer > 'OK (cmd_finished).'
Succes: MV <TESTBASE>/test/local/Maildir/tmp/123 <TESTBASE>/test/local/Maildir/cur/123,Sab
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/123,Sab (0)
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp/123 (0)
Directory time <TESTBASE>/test/local/Maildir/cur <TESTBASE>/test/local/Maildir/cur/123,Sab
Directory time <TESTBASE>/test/local/Maildir/tmp <TESTBASE>/test/local/Maildir/tmp/123
Updating (HARDLINK) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/local/Maildir/cur/123,Sab'
CONN peer < SIG %25test%25/Maildir/.Trash/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab RC 32
do hardlink check <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/local/Maildir/cur/123,Sab 
CONN peer < SIG %25test%25/Maildir/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/cur/123,Sab RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for <TESTBASE>/test/local/Maildir/cur/123,Sab
CONN peer > 'OK (cmd_finished).'
?S: peer            <TESTBASE>/test/local/Maildir/cur/123,Sab
Hardlinking peer <TESTBASE>/test/local/Maildir/cur/123,Sab -> <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
CONN peer < MKHARDLINK %25test%25/Maildir/.Trash/cur/123,Sab %25test%25/Maildir/cur/123,Sab 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab (0)
clear dirty HARDLINK <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/local/Maildir/cur/123,Sab
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab (0)
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur/123,Sab (0)
Directory time <TESTBASE>/test/local/Maildir/.Trash/cur <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
SETTIME peer:<TESTBASE>/test/local/Maildir/.Trash/cur
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash/cur 0.
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/Maildir/tmp
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/tmp 0.
CONN peer < SETTIME %25test%25/Maildir/tmp 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/Maildir/cur
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/cur 0.
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/Maildir
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 0.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local/Maildir/.Trash
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash 0.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
