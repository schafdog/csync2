cmd x "New directory" local peer test
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
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin/* ..
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
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr' ''
CONN peer < SIG %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/usr RC 32
CONN peer < MKDIR %25test%25/usr - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local' ''
CONN peer < SIG %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local RC 32
CONN peer < MKDIR %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin' ''
CONN peer < SIG %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin RC 32
CONN peer < MKDIR %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/usr/local/sbin (0)
CONN peer < SETTIME %25test%25/usr/local 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/usr 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
