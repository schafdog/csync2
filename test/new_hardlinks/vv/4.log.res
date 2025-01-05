cmd x "4 more files hardlinked (x)" local peer test
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/new/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
2 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 rows matched: 1
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
3 files with same dev:inode (2049:0) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: HARDLINK(32) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
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
CONN peer > 'OK (cmd_finished).'
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
CONN peer < MOD %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (0)
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
CONN peer < SIG %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 RC 32
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
CONN peer < MKHARDLINK %25test%25/new/new_file %25test%25/new/hardlinked_2 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 (0)
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file (0)
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
CONN peer < SIG %25test%25/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 RC 32
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (data_follows).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4'
CONN peer > 'octet-stream 32'
Got octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 (octet-stream)
CONN peer > 'OK (cmd_finished).'
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
CONN peer < MKHARDLINK %25test%25/new/new_file %25test%25/new/hardlinked_3 
CONN peer > 'OK (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 (0)
clear dirty HARDLINK
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 (0)
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file (0)
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
