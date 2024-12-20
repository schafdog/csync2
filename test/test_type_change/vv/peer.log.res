Config-File:   csync2_mysql_peer.cfg
Found my alias peer localhost 30861 
Binding to 30861 IPv0 
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  is clean
CONN local < OK 
Sending sig_file to peer..
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 time: 0 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 '
peername: local file: /export/home/dennis/Projects/csync2/csync2/test/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
db_sql_list_file peer <-> local /export/home/dennis/Projects/csync2/csync2/test/test/peer
db_sql_list_file  local:/export/home/dennis/Projects/csync2/csync2/test/test/peer
db_sql_list_file  local:/export/home/dennis/Projects/csync2/csync2/test/test/peer
db_sql_list_file  local:/export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4	/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 
CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change

CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	/export/home/dennis/Projects/csync2/csync2/test/test/peer

CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 33188 - 9 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 33188 - 9 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  is clean
Unlinking entry due to different type: 32768 16384 
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due to generation 3 
Removing /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3/* ..
Removing file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3/new_file 'N' all
Removed file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3/new_file 'N' all 0
Removed directory /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1'. rc = 0
1 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change': 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/* ..
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  is clean
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.3 due  3 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all from file db.
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 1 
CONN local < OK 
Sending sig_file to peer..
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
CONN local > 'octet-stream 15'
Got octet-stream 15
Content length in buffer: 'octet-stream 15' size: 15 rc: 0 (octet-stream)
Receiving 15 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group'
ERROR: Check for directory failed with non-directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change: 33188
CONN local < ERROR not found): 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 20 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=9

Sending sig_file to peer..
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  is clean
Unlinking entry due to different type: 16384 32768 
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1'. rc = 0
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  is clean
CONN local < OK 
Sending sig_file to peer..
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 time: 0 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 33188 - 11 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 33188 - 11 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  is clean
Unlinking entry due to different type: 32768 16384 
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due to generation 3 
Removing /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3/* ..
Removing file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3/new_file 'N' all
Removed file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3/new_file 'N' all 0
Removed directory /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1'. rc = 0
1 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change': 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/* ..
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all  is clean
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all.3 due  3 
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all from file db.
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change): 1 1 
CONN local < OK 
Sending sig_file to peer..
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
CONN local > 'octet-stream 17'
Got octet-stream 17
Content length in buffer: 'octet-stream 17' size: 17 rc: 0 (octet-stream)
Receiving 17 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group'
ERROR: Check for directory failed with non-directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change: 33188
CONN local < ERROR not found): 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 20 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
1 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 1 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change  is clean
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change.1'. rc = 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change from file db.
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 1 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
