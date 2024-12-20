cmd du "7 more files hardlinked (dry-run updated)" local peer test
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
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local on dry run
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
CONN peer < SIG %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
File is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' ''
CONN peer < SIG %25test%25/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked on dry run
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked (0)
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' ''
CONN peer < SIG %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 on dry run
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 (0)
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' ''
CONN peer < SIG %25test%25/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 on dry run
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 (0)
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' ''
CONN peer < SIG %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 RC 32
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
CONN peer < SIG %25test%25/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 RC 32
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
clear peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file on dry run
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file (0)
Skipping directories due to dry runCONN peer < BYE

CONN peer > 'OK (cu_later).'
