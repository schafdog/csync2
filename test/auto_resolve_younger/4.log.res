cmd u "4 create directories (update)" local peer test
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
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1620424800 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 1620424800 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' ''
CONN peer < SIG %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 1620424800 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto RC 32
CONN peer < MKDIR %25test%25/auto - 1234 1000 dennis schafroth 16877 - 1620424800 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto (0)
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger' ''
CONN peer < SIG %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 1620424800 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger RC 32
CONN peer < MKDIR %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 1620424800 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/younger (0)
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 1620424800.
CONN peer < SETTIME %25test%25/auto 
CONN peer > 'OK (cmd_finished).'
update_directory: Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1620424800.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
