cmd u "update: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local peer test
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
File is different on peer (cktxt char #-8).
>>> peer:	v2:mtime=1733504271:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1733504279:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0 [non-regular file])
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
File is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=1733504278:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1733504279:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < MOD %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
CONN peer < MV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S (0)
CONN peer < SIG %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8'
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 1 [regular file])
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
CONN peer < SIG %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S RC 32
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
CONN peer < SIG %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1234 1000 dennis schafroth 33188 - 8 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8'
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 1 [regular file])
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN peer < MKHARDLINK %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S (0)
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
