Config-File:   csync2_pgsql_peer.cfg
Found my alias peer localhost 30861 
Binding to 30861 IPv0 
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
check_mod: No such file '<TESTBASE>/test/peer' .
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer'
mkdir <TESTBASE>/test/peer rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mkdir) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
check_mod: No such file '<TESTBASE>/test/peer/type_change' .
Checking for deleted files <TESTBASE>/test/peer/type_change.
daemon_check_dirty: <TESTBASE>/test/peer/type_change is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/type_change'
mkdir <TESTBASE>/test/peer/type_change rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/type_change rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/type_change rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
Updated(mkdir) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/type_change/new_file 'N' all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
check_mod: No such file '<TESTBASE>/test/peer/type_change/new_file 'N' all' .
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/type_change/new_file 'N' all'
daemon CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/type_change/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change/new_file 'N' all
Updated(create) local:<TESTBASE>/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/type_change xxxxxxxx        
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 '
Command: local: LIST <TESTBASE>/test/peer 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1       
peername: local file: <TESTBASE>/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
db_sql_list_file peer <-> local <TESTBASE>/test/peer
db_sql_list_file  local:<TESTBASE>/test/peer
db_sql_list_file  local:<TESTBASE>/test/peer
db_sql_list_file  local:<TESTBASE>/test/peer
CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4	<TESTBASE>/test/peer/type_change/new_file 
CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	<TESTBASE>/test/peer/type_change

CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	<TESTBASE>/test/peer

CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 33188 - 9 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/type_change user/group 1234 1000 dennis schafroth 33188 - 9 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 33188 - 9 xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/type_change - 1234 1000 dennis schafroth 33188 - 9 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
daemon_check_dirty: <TESTBASE>/test/peer/type_change is clean
Unlinking entry due to different type: 32768 16384 
backup <TESTBASE>/test/peer/type_change 0 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
Removing /tmp/csync2<TESTBASE>/test/peer/type_change.3/* ..
Removing file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all
Removed file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all 0
Locking 'DELETE,ISDIR:/tmp/csync2<TESTBASE>/test/peer/type_change.3'
Removed directory /tmp/csync2<TESTBASE>/test/peer/type_change.3 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
1 files within directory '<TESTBASE>/test/peer/type_change': 
Deleting recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. Errors 0
Removing <TESTBASE>/test/peer/type_change/* ..
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all is clean
Removing file <TESTBASE>/test/peer/type_change/new_file 'N' all
backup <TESTBASE>/test/peer/type_change/new_file 'N' all 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/type_change/new_file 'N' all'
Removing <TESTBASE>/test/peer/type_change/new_file 'N' all from file db.
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/type_change'
Removed directory <TESTBASE>/test/peer/type_change 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 1 
CONN local < OK 
Sending sig_file for <TESTBASE>/test/peer/type_change to peer.
CONN local < octet-stream 12

Signature has been sent to peer successfully.
CONN local > 'octet-stream 15'
Got octet-stream 15
Content length in buffer: 'octet-stream 15' size: 15 rc: 0 (octet-stream)
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.type_change.XXXXXX'
Locking 'MOVED_TO:<TESTBASE>/test/peer/type_change'
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
Updated(patch) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group'
Command: local: SIG <TESTBASE>/test/peer/type_change/new_file 'N' all user/group        
ERROR: Check for directory failed with non-directory <TESTBASE>/test/peer/type_change: 33188
CONN local < ERROR not found): 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=9

Sending sig_file for <TESTBASE>/test/peer/type_change to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
daemon_check_dirty: <TESTBASE>/test/peer/type_change is clean
Unlinking entry due to different type: 16384 32768 
backup <TESTBASE>/test/peer/type_change 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
Locking 'DELETE:<TESTBASE>/test/peer/type_change'
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/type_change'
mkdir <TESTBASE>/test/peer/type_change rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/type_change rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/type_change rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
Updated(mkdir) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/type_change/new_file 'N' all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
check_mod: No such file '<TESTBASE>/test/peer/type_change/new_file 'N' all' .
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/type_change/new_file 'N' all'
daemon CREATE <TESTBASE>/test/peer/type_change/new_file 'N' all 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/type_change/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change/new_file 'N' all
Updated(create) local:<TESTBASE>/test/peer/type_change/new_file 'N' all  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/type_change xxxxxxxx        
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 33188 - 11 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/type_change user/group 1234 1000 dennis schafroth 33188 - 11 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 33188 - 11 xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/type_change - 1234 1000 dennis schafroth 33188 - 11 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
daemon_check_dirty: <TESTBASE>/test/peer/type_change is clean
Unlinking entry due to different type: 32768 16384 
backup <TESTBASE>/test/peer/type_change 0 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
Removing /tmp/csync2<TESTBASE>/test/peer/type_change.3/* ..
Removing file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all
Removed file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all 0
Locking 'DELETE,ISDIR:/tmp/csync2<TESTBASE>/test/peer/type_change.3'
Removed directory /tmp/csync2<TESTBASE>/test/peer/type_change.3 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
1 files within directory '<TESTBASE>/test/peer/type_change': 
Deleting recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. Errors 0
Removing <TESTBASE>/test/peer/type_change/* ..
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all is clean
Removing file <TESTBASE>/test/peer/type_change/new_file 'N' all
backup <TESTBASE>/test/peer/type_change/new_file 'N' all 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/type_change/new_file 'N' all'
Removing <TESTBASE>/test/peer/type_change/new_file 'N' all from file db.
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/type_change'
Removed directory <TESTBASE>/test/peer/type_change 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 1 
CONN local < OK 
Sending sig_file for <TESTBASE>/test/peer/type_change to peer.
CONN local < octet-stream 12

Signature has been sent to peer successfully.
CONN local > 'octet-stream 17'
Got octet-stream 17
Content length in buffer: 'octet-stream 17' size: 17 rc: 0 (octet-stream)
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.type_change.XXXXXX'
Locking 'MOVED_TO:<TESTBASE>/test/peer/type_change'
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
Updated(patch) local:<TESTBASE>/test/peer/type_change  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group'
Command: local: SIG <TESTBASE>/test/peer/type_change/new_file 'N' all user/group        
ERROR: Check for directory failed with non-directory <TESTBASE>/test/peer/type_change: 33188
CONN local < ERROR not found): 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
Command: local: SIG <TESTBASE>/test/peer user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Command: local: DEL <TESTBASE>/test/peer         
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
backup <TESTBASE>/test/peer 0 
1 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Checking for deleted files <TESTBASE>/test/peer/type_change.
daemon_check_dirty: <TESTBASE>/test/peer/type_change is clean
Removing file <TESTBASE>/test/peer/type_change
backup <TESTBASE>/test/peer/type_change 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
Locking 'DELETE:<TESTBASE>/test/peer/type_change'
Removing <TESTBASE>/test/peer/type_change from file db.
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Removed directory <TESTBASE>/test/peer 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 1 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
