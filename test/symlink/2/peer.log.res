Config-File:   csync2_pgsql_peer.cfg
Found my alias peer localhost 30861
Binding to 30861 IPv2
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
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
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/new_file 'N' all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
check_mod: No such file '<TESTBASE>/test/peer/new_file 'N' all' .
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all'
daemon CREATE <TESTBASE>/test/peer/new_file 'N' all 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/new_file 'N' all  
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link new_file%20%27N%27%20all'
Command: local: MKLINK <TESTBASE>/test/peer/new_file 'N' all.link new_file 'N' all        
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
check_mod: No such file '<TESTBASE>/test/peer/new_file 'N' all.link' .
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link is clean
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: new_file 'N' all, param2: peer
Updated(mklink) local:<TESTBASE>/test/peer/new_file 'N' all.link new_file 'N' all 
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all.link MKLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SETOWN <TESTBASE>/test/peer/new_file 'N' all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link is clean
Updated(setown) local:<TESTBASE>/test/peer/new_file 'N' all.link  
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all.link SETOWN 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new_file 'N' all.link xxxxxxxx        
settime <TESTBASE>/test/peer/new_file 'N' all.link rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all.link SETTIME 0 
CONN local < OK (cmd_finished).

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
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
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
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

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
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link missing'
Command: local: MKLINK <TESTBASE>/test/peer/bad.link missing        
daemon_check_dirty: <TESTBASE>/test/peer/bad.link
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
check_mod: No such file '<TESTBASE>/test/peer/bad.link' .
Checking for deleted files <TESTBASE>/test/peer/bad.link.
daemon_check_dirty: <TESTBASE>/test/peer/bad.link is clean
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: missing, param2: peer
Updated(mklink) local:<TESTBASE>/test/peer/bad.link missing 
Daemon end_command <TESTBASE>/test/peer/bad.link MKLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SETOWN <TESTBASE>/test/peer/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/bad.link
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Checking for deleted files <TESTBASE>/test/peer/bad.link.
daemon_check_dirty: <TESTBASE>/test/peer/bad.link is clean
Updated(setown) local:<TESTBASE>/test/peer/bad.link  
Daemon end_command <TESTBASE>/test/peer/bad.link SETOWN 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/bad.link xxxxxxxx        
settime <TESTBASE>/test/peer/bad.link rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/bad.link SETTIME 0 
CONN local < OK (cmd_finished).

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
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
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
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Command: local: DEL <TESTBASE>/test/peer         
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
backup <TESTBASE>/test/peer 0 
3 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 3 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link is clean
Removing file <TESTBASE>/test/peer/new_file 'N' all.link
backup <TESTBASE>/test/peer/new_file 'N' all.link 0 
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.2' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.1' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.1'. rc = 0
Locking 'DELETE:<TESTBASE>/test/peer/new_file 'N' all.link'
Removing <TESTBASE>/test/peer/new_file 'N' all.link from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/new_file 'N' all.link, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all is clean
Removing file <TESTBASE>/test/peer/new_file 'N' all
backup <TESTBASE>/test/peer/new_file 'N' all 0 
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.2' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.1' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.1'. rc = 0
Locking 'DELETE:<TESTBASE>/test/peer/new_file 'N' all'
Removing <TESTBASE>/test/peer/new_file 'N' all from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/new_file 'N' all, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/bad.link
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Checking for deleted files <TESTBASE>/test/peer/bad.link.
daemon_check_dirty: <TESTBASE>/test/peer/bad.link is clean
Removing file <TESTBASE>/test/peer/bad.link
backup <TESTBASE>/test/peer/bad.link 0 
Locking 'DELETE:<TESTBASE>/test/peer/bad.link'
Removing <TESTBASE>/test/peer/bad.link from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/bad.link, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Removing directory <TESTBASE>/test/peer 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer, param2: <TESTBASE>/test/peer/%, param3: peer
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
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
