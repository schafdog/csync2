Config-File:   csync2_mysql_peer.cfg
Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Mode: 64 Flags: 0 PID: 930856
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           25c08860acb2d832f423011a275b78941d04b0f5
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1623103200 4096 '
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 1623103200 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 1623103200 4096 '
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 1623103200 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1623103200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 1623103200 4096 '
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto user/group 1234 1000 dennis schafroth 16877 - 1623103200 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 1623103200 4096 '
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto - 1234 1000 dennis schafroth 16877 - 1623103200 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 1623103200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 1623103200 4096 '
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older user/group 1234 1000 dennis schafroth 16877 - 1623103200 4096
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older failed stat
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older - 1234 1000 dennis schafroth 16877 - 1623103200 4096 '
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older - 1234 1000 dennis schafroth 16877 - 1623103200 4096
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older failed stat
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  is clean
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older failed stat
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 time: 1623103200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto 1623103200'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 1623103200        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 1623103200 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1623103200'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1623103200        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1623103200 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
CONN local < OK (cu_later).

Connection closed. Pid 930856 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 930856
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           25c08860acb2d832f423011a275b78941d04b0f5
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 1623103200 14 '
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 1623103200 14
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 1623103200 1591567200 size: 14 11 
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=1591567200%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=11

CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 1623103200 14 '
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 1623103200 14
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 1623103200 1591567200 size: 14 11 
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
0 files with same dev:inode (2065:52694341) as file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is just marked dirty
daemon_check_dirty: peer operation  local /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both NEW
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is dirty here: NEW 2
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both)
CONN local < File also marked dirty here! 
CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both'
CONN local > GETTM /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both         
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 0 1591567200 size: 0 11 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
CONN local < OK (data_follows).

CONN local < 1591567200

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older 1623103200'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 1623103200        
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older time: 0 1591567200 size: 0 4096 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 time: 1623103200 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
CONN local < OK (cu_later).

Connection closed. Pid 930856 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 930856
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           25c08860acb2d832f423011a275b78941d04b0f5
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 1623103200 14 '
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 1623103200 14
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 1623103200 1654639200 size: 14 13 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=1654639200%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 1623103200 14 '
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 1623103200 14
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 1623103200 1654639200 size: 14 13 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both has changed: 
    v2:mtime=1654639200:mode=33188:user=dennis:group=schafroth:type=reg:size=13 
DB: v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=11 NEW
ignore flags: 512
mark other operation: 'MOD' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is just marked dirty
Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve.
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 1623103200 1654639200 size: 14 13 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '1626116295' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 1626116295
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1'. rc = 0
CONN local < OK (send_data).

CONN local < octet-stream 32

CONN local > 'octet-stream 20'
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 
Redis reply: SET 'CREATE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/.update_both.XXXXXX' '1626116295'  EX 300 -> OK
Redis reply: SET 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '1626116295'  EX 300 -> OK
Redis reply: SET 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '1626116295'  EX 300 -> OK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' -> 1
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both rc = 0 time: 1623103200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older 1623103200'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 1623103200        
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older time: 0 1626116295 size: 0 4096 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 time: 1623103200 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
CONN local < OK (cu_later).

Connection closed. Pid 930856 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 930856
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           25c08860acb2d832f423011a275b78941d04b0f5
Default encoding utf8mb4
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both user/group        
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 0 1623103200 size: 0 14 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=1623103200%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=14

CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both '
CONN local > DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both         
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 0 1623103200 size: 0 14 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both  is clean
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both time: 0 1623103200 size: 0 14 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1'. rc = 0
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '1626116295' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both -1
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both  
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older user/group        
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older time: 0 1626116295 size: 0 4096 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=1626116295%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older '
CONN local > DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older         
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older time: 0 1626116295 size: 0 4096 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 
/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older has changed: 
    v2:mtime=1626116295:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1623103200:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 512
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  is clean
daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
daemon: Auto resolve local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older time: 0 1626116295 size: 0 4096 
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 0 
Directory. Skip
0 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older': 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/* ..
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older): 0 
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 16877
rmdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older): 0 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=1626116295%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto '
CONN local > DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto has changed: 
    v2:mtime=1626116295:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1623103200:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 512
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 0 
Directory. Skip
0 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto': 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/* ..
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto): 0 
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 16877
rmdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto): 0 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=1626116295%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
CONN local > DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
/export/home/dennis/Projects/csync2/csync2/test/test/peer has changed: 
    v2:mtime=1626116295:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1623103200:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 512
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
Directory. Skip
0 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 0 
rm: Checking /export/home/dennis/Projects/csync2/csync2/test/test/peer 16877
rmdir /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 0 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
CONN local < OK (cu_later).

Connection closed. Pid 930856 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 930856
