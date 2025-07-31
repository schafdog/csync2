Config-File:   csync2_<DB>_<PEER>.cfg
Found my alias peer localhost 30861
Binding to 30861 IPv2
CONN (null) > 'CONFIG '
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is peer.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
check_mod: No such file '<TESTBASE>/test/peer' .
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer'
mkdir <TESTBASE>/test/peer rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/.Test - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/.Test - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/.Test
Running check for <TESTBASE>/test/peer/.Test ...
Checking for modified files <TESTBASE>/test/peer/.Test 
check_mod: No such file '<TESTBASE>/test/peer/.Test' .
Checking for deleted files <TESTBASE>/test/peer/.Test.
daemon_check_dirty: <TESTBASE>/test/peer/.Test is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.Test'
daemon CREATE <TESTBASE>/test/peer/.Test 1 0
CONN local < OK 
CONN local > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/.Test rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/.Test  
Daemon end_command <TESTBASE>/test/peer/.Test CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/A - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/A - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/A
Running check for <TESTBASE>/test/peer/A ...
Checking for modified files <TESTBASE>/test/peer/A 
check_mod: No such file '<TESTBASE>/test/peer/A' .
Checking for deleted files <TESTBASE>/test/peer/A.
daemon_check_dirty: <TESTBASE>/test/peer/A is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/A'
daemon CREATE <TESTBASE>/test/peer/A 1 0
CONN local < OK 
CONN local > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/A rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/A  
Daemon end_command <TESTBASE>/test/peer/A CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is peer.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is peer.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 '
Command: local: LIST <TESTBASE>/test/peer 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1       
peername: local file: <TESTBASE>/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
DbSql::list_file peer <-> local <TESTBASE>/test/peer
DbSql::list_file  local:<TESTBASE>/test/peer
DbSql::list_file  local:<TESTBASE>/test/peer
DbSql::list_file  local:<TESTBASE>/test/peer
CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0	<TESTBASE>/test/peer/A

CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0	<TESTBASE>/test/peer/.Test

CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir	<TESTBASE>/test/peer

Daemon end_command <TESTBASE>/test/peer LIST 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is peer.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
Command: local: STAT <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP>    
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Command: local: DEL <TESTBASE>/test/peer         
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
backup <TESTBASE>/test/peer 0 
2 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 2 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
daemon_check_dirty: <TESTBASE>/test/peer/A
Running check for <TESTBASE>/test/peer/A ...
Checking for modified files <TESTBASE>/test/peer/A 
Inserted/updated <TESTBASE>/test/peer/A rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/A.
daemon_check_dirty: <TESTBASE>/test/peer/A is just marked dirty
Removing file <TESTBASE>/test/peer/A
backup <TESTBASE>/test/peer/A 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/A.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/A'
Removing <TESTBASE>/test/peer/A from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/A, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/.Test
Running check for <TESTBASE>/test/peer/.Test ...
Checking for modified files <TESTBASE>/test/peer/.Test 
Inserted/updated <TESTBASE>/test/peer/.Test rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/.Test.
daemon_check_dirty: <TESTBASE>/test/peer/.Test is just marked dirty
Removing file <TESTBASE>/test/peer/.Test
backup <TESTBASE>/test/peer/.Test 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/.Test.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/.Test'
Removing <TESTBASE>/test/peer/.Test from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/.Test, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Removing directory <TESTBASE>/test/peer 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer, param2: <TESTBASE>/test/peer/%, param3: peer
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 2 1 
DEL local:<TESTBASE>/test/peer rc: 1
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer, param2: peer
Updated(del) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer DEL 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
