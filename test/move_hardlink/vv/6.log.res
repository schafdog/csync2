cmd u "5 Read and deleted (update)" local peer test
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
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-2).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
CONN peer < MOD %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (0)
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-2).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < MOD %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
CONN peer < SIG %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-2).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < MOD %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'
CONN peer < MV %25test%25/Maildir/tmp/123 
CONN peer > 'OK (cmd_finished).'
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 (0)
CONN peer < SIG %25test%25/Maildir/cur/123,Sab user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab (0)
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'
CONN peer < SIG %25test%25/Maildir/.Trash/cur/123,Sab user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab RC 32
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 
CONN peer < SIG %25test%25/Maildir/cur/123,Sab user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab
CONN peer < MKHARDLINK %25test%25/Maildir/cur/123,Sab %25test%25/Maildir/.Trash/cur/123,Sab 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab (0)
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab (0)
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir/tmp 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
