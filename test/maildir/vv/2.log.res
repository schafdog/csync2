cmd x "Setup Maildir" local peer test
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
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur rows matched: 1
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
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
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' ''
CONN peer < SIG %25test%25/Maildir user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir RC 32
CONN peer < MKDIR %25test%25/Maildir - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' ''
CONN peer < SIG %25test%25/Maildir/.Trash user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash RC 32
CONN peer < MKDIR %25test%25/Maildir/.Trash - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur RC 32
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur RC 32
CONN peer < MKDIR %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
CONN peer < SIG %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new RC 32
CONN peer < MKDIR %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
CONN peer < SIG %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RC 32
CONN peer < MKDIR %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
