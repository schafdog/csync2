cmd u "8 Update auto (younger success)" local peer test
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
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1625695200 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-2).
>>> peer:	v2:mtime=1623103200:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1625695200:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 1625695200 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' ''
CONN peer < SIG %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 1625695200 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-2).
>>> peer:	v2:mtime=1623103200:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1625695200:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
CONN peer < MKDIR %25test%25/auto - 1234 1000 dennis schafroth 16877 - 1625695200 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto (0)
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' ''
CONN peer < SIG %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 1625695200 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-5).
>>> peer:	v2:mtime=1620424800:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=1625695200:mode=16877:user=dennis:group=schafroth:type=dir
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger: Won autoresolve YOUNGER (2)
Sould send FLUSH peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger (won auto resolved)
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger', 0 [non-regular file])
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger
CONN peer < MKDIR %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 1625695200 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger (0)
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest' ''
CONN peer < SIG %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 1625695200 14 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13'
File is different on peer (cktxt char #-2).
>>> peer:	v2:mtime=1623103200:mode=33188:user=dennis:group=schafroth:type=reg:size=13
>>> LOCAL:	v2:mtime=1625695200:mode=33188:user=dennis:group=schafroth:type=reg:size=14
Auto resolve method YOUNGER 2 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest 
File peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest: Won autoresolve YOUNGER (2)
Sould send FLUSH peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest (won auto resolved)
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest', 1 [regular file])
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
rs_check: Found diff in sig at -32:-0
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
?B: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest
CONN peer < PATCH %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 1625695200 14 
CONN peer > 'OK (send_data).'
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
CONN peer < octet-stream 20

CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger/local_oldest (0)
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger 1625695200.
CONN peer < SETTIME %25test%25/auto/younger 
CONN peer > 'OK (cmd_finished).'
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 1625695200.
CONN peer < SETTIME %25test%25/auto 
CONN peer > 'OK (cmd_finished).'
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1625695200.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
