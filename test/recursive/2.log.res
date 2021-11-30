cmd x "2. New test/local/recursive/1/2/3/4/5/file.c" local peer test
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
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c rows matched: 1
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
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive' ''
CONN peer < SIG %25test%25/recursive user/group 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive RC 32
CONN peer < MKDIR %25test%25/recursive - 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1' ''
CONN peer < SIG %25test%25/recursive/1 user/group 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 RC 32
CONN peer < MKDIR %25test%25/recursive/1 - 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1 (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2' ''
CONN peer < SIG %25test%25/recursive/1/2 user/group 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2 - 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2 (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3' ''
CONN peer < SIG %25test%25/recursive/1/2/3 user/group 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2/3 - 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3 (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4 user/group 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2/3/4 - 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4 (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5 user/group 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 RC 32
CONN peer < MKDIR %25test%25/recursive/1/2/3/4/5 - 1234 1000 dennis schafroth 16877 - 1638282875 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5 (0)
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c' ''
CONN peer < SIG %25test%25/recursive/1/2/3/4/5/file.c user/group 1234 1000 dennis schafroth 33188 - 1638282875 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c RC 32
CONN peer < PATCH %25test%25/recursive/1/2/3/4/5/file.c - 1234 1000 dennis schafroth 33188 - 1638282875 
CONN peer > 'OK (send_data).'
CONN peer > 'octet-stream 12'
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 
CONN peer < octet-stream 17

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/recursive/1/2/3/4/5/file.c (0)
CONN peer < SETTIME %25test%25/recursive/1/2/3/4/5 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/recursive/1/2/3/4 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/recursive/1/2/3 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/recursive/1/2 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/recursive/1 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/recursive 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
