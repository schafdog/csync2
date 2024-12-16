cmd u "3 two new files hardlinked (update)" local peer test
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
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
CONN peer < SIG %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new RC 32
CONN peer < MKDIR %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (0)
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file RC 32
CONN peer < PATCH %25test%25/new/new_file - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (sending sig).'
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
Receiving 12 bytes (octet-stream)..
Sending octet-stream of 10 bytes
CONN peer < octet-stream 10

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file (0)
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
CONN peer < SIG %25test%25/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked RC 32
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file', 1 [regular file])
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
CONN peer < MKHARDLINK %25test%25/new/new_file %25test%25/new/hardlinked 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked (0)
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file (0)
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
