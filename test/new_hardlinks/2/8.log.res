cmd u "8 more files hardlinked (updated)" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 ''
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
CONN peer < SIG %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
/export/home/dennis/Projects/csync2/csync2/test/test/local/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/new
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
CONN peer < MOD %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (0)
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' ''
CONN peer < SIG %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 RC 32
CHECKING SAME DEV INODE /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 '32a0617aab4c9fe725f1b5bc441291180ad25b73'
5 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
CONN peer < SIG %25test%25/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 RC 32
Remote HARDLINK file (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5) not identical. Need patching. RC = 32
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4: 32
Not a candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
CONN peer < SIG %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
CONN peer < MKHARDLINK %25test%25/new/hardlinked_4 %25test%25/new/hardlinked_2 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 (0)
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4: 0
Candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
CONN peer < SIG %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
CONN peer < MKHARDLINK %25test%25/new/hardlinked_4 %25test%25/new/hardlinked_2 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 (0)
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 (0)
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
CONN peer < SIG %25test%25/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 RC 32
CHECKING SAME DEV INODE /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 '32a0617aab4c9fe725f1b5bc441291180ad25b73'
5 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
CONN peer < SIG %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
CONN peer < MKHARDLINK %25test%25/new/hardlinked_5 %25test%25/new/hardlinked_4 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 (0)
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5: 0
Candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
CONN peer < SIG %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
rs_check: Receiving signature 32 bytes for /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
CONN peer < MKHARDLINK %25test%25/new/hardlinked_5 %25test%25/new/hardlinked_4 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 (0)
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 (0)
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
