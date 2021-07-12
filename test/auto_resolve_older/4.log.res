cmd u "4 create directories (update)" local peer test
Mode: 4 Flags: 1 PID: 903202
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           938bbc93130031c2e2ed4d0fbda2e0ef326c803f-dirty
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 1 v2:mtime=1615676400:mode=16877:user=dennis:group=schafroth:type=dir
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto 1 v2:mtime=1626114718:mode=16877:user=dennis:group=schafroth:type=dir
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local 1 v2:mtime=1626114718:mode=16877:user=dennis:group=schafroth:type=dir
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local' '1626114718' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local 1626114718
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
CONN peer < SIG %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1626114718 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local RC 32
CONN peer < MKDIR %25test%25 - 1234 1000 dennis schafroth 16877 - 1626114718 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '1626114718' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 1626114718
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' ''
CONN peer < SIG %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 1626114718 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto RC 32
CONN peer < MKDIR %25test%25/auto - 1234 1000 dennis schafroth 16877 - 1626114718 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto (0)
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' -> 1
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '1626114718' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 1626114718
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' ''
CONN peer < SIG %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 1615676400 4096 
CONN peer > 'OK (not_found).'
update_file_sig /export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older RC 32
CONN peer < MKDIR %25test%25/auto/older - 1234 1000 dennis schafroth 16877 - 1615676400 4096 
CONN peer > 'IDENT (cmd_finished).'
before setown/settime/setmod on OK. rc 4.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older (0)
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' -> 1
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/auto 1626114718.
CONN peer < SETTIME %25test%25/auto 
CONN peer > 'OK (cmd_finished).'
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1626114718.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
