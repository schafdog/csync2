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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Path not found <TESTBASE>/test
CONN local < ERROR not found): 
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

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/recursive
Running check for <TESTBASE>/test/peer/recursive ...
Checking for modified files <TESTBASE>/test/peer/recursive 
check_mod: No such file '<TESTBASE>/test/peer/recursive' .
Checking for deleted files <TESTBASE>/test/peer/recursive.
daemon_check_dirty: <TESTBASE>/test/peer/recursive is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive'
mkdir <TESTBASE>/test/peer/recursive rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/recursive  
Daemon end_command <TESTBASE>/test/peer/recursive MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1
Running check for <TESTBASE>/test/peer/recursive/1 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1 
check_mod: No such file '<TESTBASE>/test/peer/recursive/1' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1.
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1'
mkdir <TESTBASE>/test/peer/recursive/1 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1  
Daemon end_command <TESTBASE>/test/peer/recursive/1 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2
Running check for <TESTBASE>/test/peer/recursive/1/2 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2 
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2.
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2'
mkdir <TESTBASE>/test/peer/recursive/1/2 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2  
Daemon end_command <TESTBASE>/test/peer/recursive/1/2 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3
Running check for <TESTBASE>/test/peer/recursive/1/2/3 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3 
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3.
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3'
mkdir <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3  
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4 
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3/4' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4.
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4'
mkdir <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3/4  
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3/4/5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5 
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3/4/5' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5.
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4/5'
mkdir <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3/4/5  
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4/5 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c'
daemon CREATE <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 1 0
CONN local < OK 
CONN local > 'octet-stream 11'
Got octet-stream 11
Content length in buffer: 'octet-stream 11' size: 11 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c  
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/recursive/1/2/3/4/5 xxxxxxxx        
settime <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4/5 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/recursive/1/2/3/4 xxxxxxxx        
settime <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4 SETTIME 0 
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
Inserted/updated <TESTBASE>/test/peer rows matched: 1
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is just marked dirty
backup <TESTBASE>/test/peer 0 
7 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 7 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/recursive/* ..
Removing <TESTBASE>/test/peer/recursive/1/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/3/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/3/4/* ..
Removing <TESTBASE>/test/peer/recursive/1/2/3/4/5/* ..
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c is clean
Removing file <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
backup <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c'
Removing <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4/5'
Removing directory <TESTBASE>/test/peer/recursive/1/2/3/4/5 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2/3/4/5, param2: <TESTBASE>/test/peer/recursive/1/2/3/4/5/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4'
Removing directory <TESTBASE>/test/peer/recursive/1/2/3/4 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2/3/4, param2: <TESTBASE>/test/peer/recursive/1/2/3/4/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3'
Removing directory <TESTBASE>/test/peer/recursive/1/2/3 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2/3, param2: <TESTBASE>/test/peer/recursive/1/2/3/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2'
Removing directory <TESTBASE>/test/peer/recursive/1/2 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2, param2: <TESTBASE>/test/peer/recursive/1/2/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1'
Removing directory <TESTBASE>/test/peer/recursive/1 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1, param2: <TESTBASE>/test/peer/recursive/1/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive'
Removing directory <TESTBASE>/test/peer/recursive 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive, param2: <TESTBASE>/test/peer/recursive/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Removing directory <TESTBASE>/test/peer 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer, param2: <TESTBASE>/test/peer/%, param3: peer
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 7 1 
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
