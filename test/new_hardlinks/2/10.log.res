cmd u "10 not hardlinked when updated" local peer test
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
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' ''
CONN peer < SIG %25test%25/new/was_hardlink user/group 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink RC 32
CONN peer < PATCH %25test%25/new/was_hardlink - 1234 1000 dennis schafroth 33188 - 4 
CONN peer > 'OK (sending sig).'
CONN peer > 'octet-stream 12'
Got octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 (octet-stream)
Receiving 12 bytes (octet-stream)..
Sending octet-stream of 10 bytes
CONN peer < octet-stream 10

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink (0)
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink 0
Unable to HARDLINK peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6. File has disappeared since check.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6' '-'.
mark other operation: 'MARK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink' '-'.
make other dirty /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
