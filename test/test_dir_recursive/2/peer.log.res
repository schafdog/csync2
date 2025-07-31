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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a
Running check for <TESTBASE>/test/peer/a ...
Checking for modified files <TESTBASE>/test/peer/a 
check_mod: No such file '<TESTBASE>/test/peer/a' .
Checking for deleted files <TESTBASE>/test/peer/a.
daemon_check_dirty: <TESTBASE>/test/peer/a is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a'
mkdir <TESTBASE>/test/peer/a rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a  
Daemon end_command <TESTBASE>/test/peer/a MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1
Running check for <TESTBASE>/test/peer/a/1 ...
Checking for modified files <TESTBASE>/test/peer/a/1 
check_mod: No such file '<TESTBASE>/test/peer/a/1' .
Checking for deleted files <TESTBASE>/test/peer/a/1.
daemon_check_dirty: <TESTBASE>/test/peer/a/1 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/1'
mkdir <TESTBASE>/test/peer/a/1 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/1 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/1 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/1 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/1  
Daemon end_command <TESTBASE>/test/peer/a/1 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d
Running check for <TESTBASE>/test/peer/a/1/d ...
Checking for modified files <TESTBASE>/test/peer/a/1/d 
check_mod: No such file '<TESTBASE>/test/peer/a/1/d' .
Checking for deleted files <TESTBASE>/test/peer/a/1/d.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/1/d'
mkdir <TESTBASE>/test/peer/a/1/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/1/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/1/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/1/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/1/d  
Daemon end_command <TESTBASE>/test/peer/a/1/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e
Running check for <TESTBASE>/test/peer/a/1/e ...
Checking for modified files <TESTBASE>/test/peer/a/1/e 
check_mod: No such file '<TESTBASE>/test/peer/a/1/e' .
Checking for deleted files <TESTBASE>/test/peer/a/1/e.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/1/e'
mkdir <TESTBASE>/test/peer/a/1/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/1/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/1/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/1/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/1/e  
Daemon end_command <TESTBASE>/test/peer/a/1/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f
Running check for <TESTBASE>/test/peer/a/1/f ...
Checking for modified files <TESTBASE>/test/peer/a/1/f 
check_mod: No such file '<TESTBASE>/test/peer/a/1/f' .
Checking for deleted files <TESTBASE>/test/peer/a/1/f.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/1/f'
mkdir <TESTBASE>/test/peer/a/1/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/1/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/1/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/1/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/1/f  
Daemon end_command <TESTBASE>/test/peer/a/1/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2
Running check for <TESTBASE>/test/peer/a/2 ...
Checking for modified files <TESTBASE>/test/peer/a/2 
check_mod: No such file '<TESTBASE>/test/peer/a/2' .
Checking for deleted files <TESTBASE>/test/peer/a/2.
daemon_check_dirty: <TESTBASE>/test/peer/a/2 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/2'
mkdir <TESTBASE>/test/peer/a/2 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/2 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/2 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/2 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/2  
Daemon end_command <TESTBASE>/test/peer/a/2 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d
Running check for <TESTBASE>/test/peer/a/2/d ...
Checking for modified files <TESTBASE>/test/peer/a/2/d 
check_mod: No such file '<TESTBASE>/test/peer/a/2/d' .
Checking for deleted files <TESTBASE>/test/peer/a/2/d.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/2/d'
mkdir <TESTBASE>/test/peer/a/2/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/2/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/2/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/2/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/2/d  
Daemon end_command <TESTBASE>/test/peer/a/2/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e
Running check for <TESTBASE>/test/peer/a/2/e ...
Checking for modified files <TESTBASE>/test/peer/a/2/e 
check_mod: No such file '<TESTBASE>/test/peer/a/2/e' .
Checking for deleted files <TESTBASE>/test/peer/a/2/e.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/2/e'
mkdir <TESTBASE>/test/peer/a/2/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/2/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/2/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/2/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/2/e  
Daemon end_command <TESTBASE>/test/peer/a/2/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f
Running check for <TESTBASE>/test/peer/a/2/f ...
Checking for modified files <TESTBASE>/test/peer/a/2/f 
check_mod: No such file '<TESTBASE>/test/peer/a/2/f' .
Checking for deleted files <TESTBASE>/test/peer/a/2/f.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/2/f'
mkdir <TESTBASE>/test/peer/a/2/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/2/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/2/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/2/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/2/f  
Daemon end_command <TESTBASE>/test/peer/a/2/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3
Running check for <TESTBASE>/test/peer/a/3 ...
Checking for modified files <TESTBASE>/test/peer/a/3 
check_mod: No such file '<TESTBASE>/test/peer/a/3' .
Checking for deleted files <TESTBASE>/test/peer/a/3.
daemon_check_dirty: <TESTBASE>/test/peer/a/3 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/3'
mkdir <TESTBASE>/test/peer/a/3 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/3 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/3 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/3 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/3  
Daemon end_command <TESTBASE>/test/peer/a/3 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d
Running check for <TESTBASE>/test/peer/a/3/d ...
Checking for modified files <TESTBASE>/test/peer/a/3/d 
check_mod: No such file '<TESTBASE>/test/peer/a/3/d' .
Checking for deleted files <TESTBASE>/test/peer/a/3/d.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/3/d'
mkdir <TESTBASE>/test/peer/a/3/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/3/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/3/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/3/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/3/d  
Daemon end_command <TESTBASE>/test/peer/a/3/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e
Running check for <TESTBASE>/test/peer/a/3/e ...
Checking for modified files <TESTBASE>/test/peer/a/3/e 
check_mod: No such file '<TESTBASE>/test/peer/a/3/e' .
Checking for deleted files <TESTBASE>/test/peer/a/3/e.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/3/e'
mkdir <TESTBASE>/test/peer/a/3/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/3/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/3/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/3/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/3/e  
Daemon end_command <TESTBASE>/test/peer/a/3/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/a/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f
Running check for <TESTBASE>/test/peer/a/3/f ...
Checking for modified files <TESTBASE>/test/peer/a/3/f 
check_mod: No such file '<TESTBASE>/test/peer/a/3/f' .
Checking for deleted files <TESTBASE>/test/peer/a/3/f.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/a/3/f'
mkdir <TESTBASE>/test/peer/a/3/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/a/3/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/a/3/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/a/3/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/a/3/f  
Daemon end_command <TESTBASE>/test/peer/a/3/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b
Running check for <TESTBASE>/test/peer/b ...
Checking for modified files <TESTBASE>/test/peer/b 
check_mod: No such file '<TESTBASE>/test/peer/b' .
Checking for deleted files <TESTBASE>/test/peer/b.
daemon_check_dirty: <TESTBASE>/test/peer/b is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b'
mkdir <TESTBASE>/test/peer/b rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b  
Daemon end_command <TESTBASE>/test/peer/b MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1
Running check for <TESTBASE>/test/peer/b/1 ...
Checking for modified files <TESTBASE>/test/peer/b/1 
check_mod: No such file '<TESTBASE>/test/peer/b/1' .
Checking for deleted files <TESTBASE>/test/peer/b/1.
daemon_check_dirty: <TESTBASE>/test/peer/b/1 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/1'
mkdir <TESTBASE>/test/peer/b/1 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/1 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/1 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/1 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/1  
Daemon end_command <TESTBASE>/test/peer/b/1 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d
Running check for <TESTBASE>/test/peer/b/1/d ...
Checking for modified files <TESTBASE>/test/peer/b/1/d 
check_mod: No such file '<TESTBASE>/test/peer/b/1/d' .
Checking for deleted files <TESTBASE>/test/peer/b/1/d.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/1/d'
mkdir <TESTBASE>/test/peer/b/1/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/1/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/1/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/1/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/1/d  
Daemon end_command <TESTBASE>/test/peer/b/1/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e
Running check for <TESTBASE>/test/peer/b/1/e ...
Checking for modified files <TESTBASE>/test/peer/b/1/e 
check_mod: No such file '<TESTBASE>/test/peer/b/1/e' .
Checking for deleted files <TESTBASE>/test/peer/b/1/e.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/1/e'
mkdir <TESTBASE>/test/peer/b/1/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/1/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/1/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/1/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/1/e  
Daemon end_command <TESTBASE>/test/peer/b/1/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f
Running check for <TESTBASE>/test/peer/b/1/f ...
Checking for modified files <TESTBASE>/test/peer/b/1/f 
check_mod: No such file '<TESTBASE>/test/peer/b/1/f' .
Checking for deleted files <TESTBASE>/test/peer/b/1/f.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/1/f'
mkdir <TESTBASE>/test/peer/b/1/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/1/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/1/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/1/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/1/f  
Daemon end_command <TESTBASE>/test/peer/b/1/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2
Running check for <TESTBASE>/test/peer/b/2 ...
Checking for modified files <TESTBASE>/test/peer/b/2 
check_mod: No such file '<TESTBASE>/test/peer/b/2' .
Checking for deleted files <TESTBASE>/test/peer/b/2.
daemon_check_dirty: <TESTBASE>/test/peer/b/2 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/2'
mkdir <TESTBASE>/test/peer/b/2 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/2 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/2 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/2 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/2  
Daemon end_command <TESTBASE>/test/peer/b/2 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d
Running check for <TESTBASE>/test/peer/b/2/d ...
Checking for modified files <TESTBASE>/test/peer/b/2/d 
check_mod: No such file '<TESTBASE>/test/peer/b/2/d' .
Checking for deleted files <TESTBASE>/test/peer/b/2/d.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/2/d'
mkdir <TESTBASE>/test/peer/b/2/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/2/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/2/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/2/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/2/d  
Daemon end_command <TESTBASE>/test/peer/b/2/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e
Running check for <TESTBASE>/test/peer/b/2/e ...
Checking for modified files <TESTBASE>/test/peer/b/2/e 
check_mod: No such file '<TESTBASE>/test/peer/b/2/e' .
Checking for deleted files <TESTBASE>/test/peer/b/2/e.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/2/e'
mkdir <TESTBASE>/test/peer/b/2/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/2/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/2/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/2/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/2/e  
Daemon end_command <TESTBASE>/test/peer/b/2/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f
Running check for <TESTBASE>/test/peer/b/2/f ...
Checking for modified files <TESTBASE>/test/peer/b/2/f 
check_mod: No such file '<TESTBASE>/test/peer/b/2/f' .
Checking for deleted files <TESTBASE>/test/peer/b/2/f.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/2/f'
mkdir <TESTBASE>/test/peer/b/2/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/2/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/2/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/2/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/2/f  
Daemon end_command <TESTBASE>/test/peer/b/2/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3
Running check for <TESTBASE>/test/peer/b/3 ...
Checking for modified files <TESTBASE>/test/peer/b/3 
check_mod: No such file '<TESTBASE>/test/peer/b/3' .
Checking for deleted files <TESTBASE>/test/peer/b/3.
daemon_check_dirty: <TESTBASE>/test/peer/b/3 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/3'
mkdir <TESTBASE>/test/peer/b/3 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/3 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/3 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/3 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/3  
Daemon end_command <TESTBASE>/test/peer/b/3 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d
Running check for <TESTBASE>/test/peer/b/3/d ...
Checking for modified files <TESTBASE>/test/peer/b/3/d 
check_mod: No such file '<TESTBASE>/test/peer/b/3/d' .
Checking for deleted files <TESTBASE>/test/peer/b/3/d.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/3/d'
mkdir <TESTBASE>/test/peer/b/3/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/3/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/3/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/3/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/3/d  
Daemon end_command <TESTBASE>/test/peer/b/3/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e
Running check for <TESTBASE>/test/peer/b/3/e ...
Checking for modified files <TESTBASE>/test/peer/b/3/e 
check_mod: No such file '<TESTBASE>/test/peer/b/3/e' .
Checking for deleted files <TESTBASE>/test/peer/b/3/e.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/3/e'
mkdir <TESTBASE>/test/peer/b/3/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/3/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/3/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/3/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/3/e  
Daemon end_command <TESTBASE>/test/peer/b/3/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/b/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f
Running check for <TESTBASE>/test/peer/b/3/f ...
Checking for modified files <TESTBASE>/test/peer/b/3/f 
check_mod: No such file '<TESTBASE>/test/peer/b/3/f' .
Checking for deleted files <TESTBASE>/test/peer/b/3/f.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/b/3/f'
mkdir <TESTBASE>/test/peer/b/3/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/b/3/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/b/3/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/b/3/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/b/3/f  
Daemon end_command <TESTBASE>/test/peer/b/3/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c
Running check for <TESTBASE>/test/peer/c ...
Checking for modified files <TESTBASE>/test/peer/c 
check_mod: No such file '<TESTBASE>/test/peer/c' .
Checking for deleted files <TESTBASE>/test/peer/c.
daemon_check_dirty: <TESTBASE>/test/peer/c is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c'
mkdir <TESTBASE>/test/peer/c rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c  
Daemon end_command <TESTBASE>/test/peer/c MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1
Running check for <TESTBASE>/test/peer/c/1 ...
Checking for modified files <TESTBASE>/test/peer/c/1 
check_mod: No such file '<TESTBASE>/test/peer/c/1' .
Checking for deleted files <TESTBASE>/test/peer/c/1.
daemon_check_dirty: <TESTBASE>/test/peer/c/1 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/1'
mkdir <TESTBASE>/test/peer/c/1 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/1 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/1 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/1 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/1  
Daemon end_command <TESTBASE>/test/peer/c/1 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/1/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d
Running check for <TESTBASE>/test/peer/c/1/d ...
Checking for modified files <TESTBASE>/test/peer/c/1/d 
check_mod: No such file '<TESTBASE>/test/peer/c/1/d' .
Checking for deleted files <TESTBASE>/test/peer/c/1/d.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/1/d'
mkdir <TESTBASE>/test/peer/c/1/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/1/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/1/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/1/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/1/d  
Daemon end_command <TESTBASE>/test/peer/c/1/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/1/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e
Running check for <TESTBASE>/test/peer/c/1/e ...
Checking for modified files <TESTBASE>/test/peer/c/1/e 
check_mod: No such file '<TESTBASE>/test/peer/c/1/e' .
Checking for deleted files <TESTBASE>/test/peer/c/1/e.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/1/e'
mkdir <TESTBASE>/test/peer/c/1/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/1/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/1/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/1/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/1/e  
Daemon end_command <TESTBASE>/test/peer/c/1/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/1/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f
Running check for <TESTBASE>/test/peer/c/1/f ...
Checking for modified files <TESTBASE>/test/peer/c/1/f 
check_mod: No such file '<TESTBASE>/test/peer/c/1/f' .
Checking for deleted files <TESTBASE>/test/peer/c/1/f.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/1/f'
mkdir <TESTBASE>/test/peer/c/1/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/1/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/1/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/1/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/1/f  
Daemon end_command <TESTBASE>/test/peer/c/1/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2
Running check for <TESTBASE>/test/peer/c/2 ...
Checking for modified files <TESTBASE>/test/peer/c/2 
check_mod: No such file '<TESTBASE>/test/peer/c/2' .
Checking for deleted files <TESTBASE>/test/peer/c/2.
daemon_check_dirty: <TESTBASE>/test/peer/c/2 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/2'
mkdir <TESTBASE>/test/peer/c/2 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/2 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/2 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/2 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/2  
Daemon end_command <TESTBASE>/test/peer/c/2 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/2/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d
Running check for <TESTBASE>/test/peer/c/2/d ...
Checking for modified files <TESTBASE>/test/peer/c/2/d 
check_mod: No such file '<TESTBASE>/test/peer/c/2/d' .
Checking for deleted files <TESTBASE>/test/peer/c/2/d.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/2/d'
mkdir <TESTBASE>/test/peer/c/2/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/2/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/2/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/2/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/2/d  
Daemon end_command <TESTBASE>/test/peer/c/2/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/2/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e
Running check for <TESTBASE>/test/peer/c/2/e ...
Checking for modified files <TESTBASE>/test/peer/c/2/e 
check_mod: No such file '<TESTBASE>/test/peer/c/2/e' .
Checking for deleted files <TESTBASE>/test/peer/c/2/e.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/2/e'
mkdir <TESTBASE>/test/peer/c/2/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/2/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/2/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/2/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/2/e  
Daemon end_command <TESTBASE>/test/peer/c/2/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/2/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f
Running check for <TESTBASE>/test/peer/c/2/f ...
Checking for modified files <TESTBASE>/test/peer/c/2/f 
check_mod: No such file '<TESTBASE>/test/peer/c/2/f' .
Checking for deleted files <TESTBASE>/test/peer/c/2/f.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/2/f'
mkdir <TESTBASE>/test/peer/c/2/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/2/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/2/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/2/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/2/f  
Daemon end_command <TESTBASE>/test/peer/c/2/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3
Running check for <TESTBASE>/test/peer/c/3 ...
Checking for modified files <TESTBASE>/test/peer/c/3 
check_mod: No such file '<TESTBASE>/test/peer/c/3' .
Checking for deleted files <TESTBASE>/test/peer/c/3.
daemon_check_dirty: <TESTBASE>/test/peer/c/3 is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/3'
mkdir <TESTBASE>/test/peer/c/3 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/3 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/3 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/3 rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/3  
Daemon end_command <TESTBASE>/test/peer/c/3 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3/d user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/3/d - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d
Running check for <TESTBASE>/test/peer/c/3/d ...
Checking for modified files <TESTBASE>/test/peer/c/3/d 
check_mod: No such file '<TESTBASE>/test/peer/c/3/d' .
Checking for deleted files <TESTBASE>/test/peer/c/3/d.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/3/d'
mkdir <TESTBASE>/test/peer/c/3/d rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/3/d rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/3/d rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/3/d rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/3/d  
Daemon end_command <TESTBASE>/test/peer/c/3/d MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3/e user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/3/e - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e
Running check for <TESTBASE>/test/peer/c/3/e ...
Checking for modified files <TESTBASE>/test/peer/c/3/e 
check_mod: No such file '<TESTBASE>/test/peer/c/3/e' .
Checking for deleted files <TESTBASE>/test/peer/c/3/e.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/3/e'
mkdir <TESTBASE>/test/peer/c/3/e rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/3/e rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/3/e rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/3/e rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/3/e  
Daemon end_command <TESTBASE>/test/peer/c/3/e MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3/f user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/c/3/f - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f
Running check for <TESTBASE>/test/peer/c/3/f ...
Checking for modified files <TESTBASE>/test/peer/c/3/f 
check_mod: No such file '<TESTBASE>/test/peer/c/3/f' .
Checking for deleted files <TESTBASE>/test/peer/c/3/f.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/c/3/f'
mkdir <TESTBASE>/test/peer/c/3/f rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/c/3/f rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/c/3/f rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/c/3/f rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/c/3/f  
Daemon end_command <TESTBASE>/test/peer/c/3/f MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d/f1.txt
Running check for <TESTBASE>/test/peer/a/1/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/1/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/1/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/1/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/1/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/1/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/1/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/1/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e/f1.txt
Running check for <TESTBASE>/test/peer/a/1/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/1/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/1/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/1/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/1/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/1/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/1/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/1/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f/f1.txt
Running check for <TESTBASE>/test/peer/a/1/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/1/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/1/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/1/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/1/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/1/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/1/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/1/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f1.txt
Running check for <TESTBASE>/test/peer/a/1/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/1/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/1/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/1/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/1/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/1/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/1/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/1/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d/f1.txt
Running check for <TESTBASE>/test/peer/a/2/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/2/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/2/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/2/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/2/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/2/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/2/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/2/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e/f1.txt
Running check for <TESTBASE>/test/peer/a/2/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/2/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/2/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/2/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/2/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/2/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/2/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/2/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f/f1.txt
Running check for <TESTBASE>/test/peer/a/2/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/2/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/2/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/2/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/2/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/2/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/2/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/2/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f1.txt
Running check for <TESTBASE>/test/peer/a/2/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/2/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/2/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/2/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/2/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/2/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/2/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/2/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d/f1.txt
Running check for <TESTBASE>/test/peer/a/3/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/3/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/3/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/3/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/3/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/3/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/3/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/3/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e/f1.txt
Running check for <TESTBASE>/test/peer/a/3/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/3/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/3/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/3/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/3/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/3/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/3/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/3/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f/f1.txt
Running check for <TESTBASE>/test/peer/a/3/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/3/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/3/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/3/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/3/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/3/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/3/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/3/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f1.txt
Running check for <TESTBASE>/test/peer/a/3/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/3/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/3/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/3/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/3/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/3/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/3/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/3/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/a/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/a/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/a/f1.txt
Running check for <TESTBASE>/test/peer/a/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/a/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/a/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/a/f1.txt'
daemon CREATE <TESTBASE>/test/peer/a/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/a/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/a/f1.txt  
Daemon end_command <TESTBASE>/test/peer/a/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d/f1.txt
Running check for <TESTBASE>/test/peer/b/1/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/1/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/1/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/1/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/1/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/1/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/1/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/1/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e/f1.txt
Running check for <TESTBASE>/test/peer/b/1/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/1/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/1/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/1/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/1/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/1/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/1/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/1/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f/f1.txt
Running check for <TESTBASE>/test/peer/b/1/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/1/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/1/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/1/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/1/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/1/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/1/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/1/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f1.txt
Running check for <TESTBASE>/test/peer/b/1/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/1/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/1/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/1/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/1/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/1/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/1/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/1/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d/f1.txt
Running check for <TESTBASE>/test/peer/b/2/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/2/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/2/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/2/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/2/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/2/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/2/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/2/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e/f1.txt
Running check for <TESTBASE>/test/peer/b/2/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/2/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/2/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/2/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/2/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/2/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/2/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/2/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f/f1.txt
Running check for <TESTBASE>/test/peer/b/2/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/2/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/2/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/2/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/2/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/2/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/2/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/2/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f1.txt
Running check for <TESTBASE>/test/peer/b/2/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/2/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/2/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/2/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/2/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/2/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/2/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/2/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d/f1.txt
Running check for <TESTBASE>/test/peer/b/3/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/3/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/3/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/3/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/3/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/3/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/3/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/3/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e/f1.txt
Running check for <TESTBASE>/test/peer/b/3/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/3/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/3/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/3/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/3/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/3/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/3/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/3/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f/f1.txt
Running check for <TESTBASE>/test/peer/b/3/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/3/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/3/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/3/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/3/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/3/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/3/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/3/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f1.txt
Running check for <TESTBASE>/test/peer/b/3/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/3/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/3/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/3/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/3/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/3/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/3/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/3/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/b/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/b/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/b/f1.txt
Running check for <TESTBASE>/test/peer/b/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/b/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/b/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/b/f1.txt'
daemon CREATE <TESTBASE>/test/peer/b/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/b/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/b/f1.txt  
Daemon end_command <TESTBASE>/test/peer/b/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/1/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d/f1.txt
Running check for <TESTBASE>/test/peer/c/1/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/1/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/1/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/1/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/1/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/1/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/1/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/1/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/1/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e/f1.txt
Running check for <TESTBASE>/test/peer/c/1/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/1/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/1/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/1/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/1/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/1/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/1/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/1/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/1/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f/f1.txt
Running check for <TESTBASE>/test/peer/c/1/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/1/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/1/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/1/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/1/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/1/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/1/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/1/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/1/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/1/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f1.txt
Running check for <TESTBASE>/test/peer/c/1/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/1/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/1/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/1/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/1/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/1/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/1/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/1/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/2/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d/f1.txt
Running check for <TESTBASE>/test/peer/c/2/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/2/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/2/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/2/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/2/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/2/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/2/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/2/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/2/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e/f1.txt
Running check for <TESTBASE>/test/peer/c/2/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/2/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/2/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/2/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/2/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/2/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/2/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/2/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/2/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f/f1.txt
Running check for <TESTBASE>/test/peer/c/2/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/2/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/2/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/2/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/2/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/2/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/2/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/2/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/2/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/2/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f1.txt
Running check for <TESTBASE>/test/peer/c/2/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/2/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/2/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/2/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/2/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/2/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/2/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/2/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3/d/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/3/d/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d/f1.txt
Running check for <TESTBASE>/test/peer/c/3/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/d/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/3/d/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/3/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/3/d/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/3/d/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/3/d/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/3/d/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/3/d/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3/e/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/3/e/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e/f1.txt
Running check for <TESTBASE>/test/peer/c/3/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/e/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/3/e/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/3/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/3/e/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/3/e/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/3/e/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/3/e/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/3/e/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3/f/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/3/f/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f/f1.txt
Running check for <TESTBASE>/test/peer/c/3/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/f/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/3/f/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/3/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/3/f/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/3/f/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 24'
Got octet-stream 24
Content length in buffer: 'octet-stream 24' size: 24 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/3/f/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/3/f/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/3/f/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/3/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/3/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f1.txt
Running check for <TESTBASE>/test/peer/c/3/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/3/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/3/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/3/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/3/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 22'
Got octet-stream 22
Content length in buffer: 'octet-stream 22' size: 22 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/3/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/3/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/3/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/c/f1.txt user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/c/f1.txt - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/c/f1.txt
Running check for <TESTBASE>/test/peer/c/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/f1.txt 
check_mod: No such file '<TESTBASE>/test/peer/c/f1.txt' .
Checking for deleted files <TESTBASE>/test/peer/c/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/f1.txt is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/c/f1.txt'
daemon CREATE <TESTBASE>/test/peer/c/f1.txt 1 0
CONN local < OK 
CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/c/f1.txt rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/c/f1.txt  
Daemon end_command <TESTBASE>/test/peer/c/f1.txt CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/3/f xxxxxxxx        
settime <TESTBASE>/test/peer/c/3/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/3/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/3/e xxxxxxxx        
settime <TESTBASE>/test/peer/c/3/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/3/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/3/d xxxxxxxx        
settime <TESTBASE>/test/peer/c/3/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/3/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/2/f xxxxxxxx        
settime <TESTBASE>/test/peer/c/2/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/2/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/2/e xxxxxxxx        
settime <TESTBASE>/test/peer/c/2/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/2/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/2/d xxxxxxxx        
settime <TESTBASE>/test/peer/c/2/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/2/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/1/f xxxxxxxx        
settime <TESTBASE>/test/peer/c/1/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/1/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/1/e xxxxxxxx        
settime <TESTBASE>/test/peer/c/1/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/1/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/1/d xxxxxxxx        
settime <TESTBASE>/test/peer/c/1/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/1/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/3/f xxxxxxxx        
settime <TESTBASE>/test/peer/b/3/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/3/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/3/e xxxxxxxx        
settime <TESTBASE>/test/peer/b/3/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/3/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/3/d xxxxxxxx        
settime <TESTBASE>/test/peer/b/3/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/3/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/2/f xxxxxxxx        
settime <TESTBASE>/test/peer/b/2/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/2/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/2/e xxxxxxxx        
settime <TESTBASE>/test/peer/b/2/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/2/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/2/d xxxxxxxx        
settime <TESTBASE>/test/peer/b/2/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/2/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/1/f xxxxxxxx        
settime <TESTBASE>/test/peer/b/1/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/1/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/1/e xxxxxxxx        
settime <TESTBASE>/test/peer/b/1/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/1/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/1/d xxxxxxxx        
settime <TESTBASE>/test/peer/b/1/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/1/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/3/f xxxxxxxx        
settime <TESTBASE>/test/peer/a/3/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/3/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/3/e xxxxxxxx        
settime <TESTBASE>/test/peer/a/3/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/3/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/3/d xxxxxxxx        
settime <TESTBASE>/test/peer/a/3/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/3/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/2/f xxxxxxxx        
settime <TESTBASE>/test/peer/a/2/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/2/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/2/e xxxxxxxx        
settime <TESTBASE>/test/peer/a/2/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/2/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/2/d xxxxxxxx        
settime <TESTBASE>/test/peer/a/2/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/2/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/f xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/1/f xxxxxxxx        
settime <TESTBASE>/test/peer/a/1/f rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/1/f SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/e xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/1/e xxxxxxxx        
settime <TESTBASE>/test/peer/a/1/e rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/1/e SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1/d xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/1/d xxxxxxxx        
settime <TESTBASE>/test/peer/a/1/d rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/1/d SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/3 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/3 xxxxxxxx        
settime <TESTBASE>/test/peer/c/3 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/3 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/2 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/2 xxxxxxxx        
settime <TESTBASE>/test/peer/c/2 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/2 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c/1 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c/1 xxxxxxxx        
settime <TESTBASE>/test/peer/c/1 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c/1 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/c xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/c xxxxxxxx        
settime <TESTBASE>/test/peer/c rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/c SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/3 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/3 xxxxxxxx        
settime <TESTBASE>/test/peer/b/3 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/3 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/2 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/2 xxxxxxxx        
settime <TESTBASE>/test/peer/b/2 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/2 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b/1 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b/1 xxxxxxxx        
settime <TESTBASE>/test/peer/b/1 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b/1 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/b xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/b xxxxxxxx        
settime <TESTBASE>/test/peer/b rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/b SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/3 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/3 xxxxxxxx        
settime <TESTBASE>/test/peer/a/3 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/3 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/2 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/2 xxxxxxxx        
settime <TESTBASE>/test/peer/a/2 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/2 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a/1 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a/1 xxxxxxxx        
settime <TESTBASE>/test/peer/a/1 rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a/1 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/a xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/a xxxxxxxx        
settime <TESTBASE>/test/peer/a rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/a SETTIME 0 
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
78 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 78 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/c/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/f1.txt
Running check for <TESTBASE>/test/peer/c/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/f1.txt
backup <TESTBASE>/test/peer/c/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/f1.txt'
Removing <TESTBASE>/test/peer/c/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/c/3/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/3/ignored~
Running check for <TESTBASE>/test/peer/c/3/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/c/3/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/c/3/ignored~
Checking for deleted files <TESTBASE>/test/peer/c/3/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/ignored~ is clean
Removing file <TESTBASE>/test/peer/c/3/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/c/3/ignored~'
Removing <TESTBASE>/test/peer/c/3/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f1.txt
Running check for <TESTBASE>/test/peer/c/3/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/3/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/3/f1.txt
backup <TESTBASE>/test/peer/c/3/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/3/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/3/f1.txt'
Removing <TESTBASE>/test/peer/c/3/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/c/3/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f/ignored.o
Running check for <TESTBASE>/test/peer/c/3/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/3/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/3/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/3/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/3/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/3/f/ignored.o'
Removing <TESTBASE>/test/peer/c/3/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f/f1.txt
Running check for <TESTBASE>/test/peer/c/3/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/3/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/3/f/f1.txt
backup <TESTBASE>/test/peer/c/3/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/3/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/3/f/f1.txt'
Removing <TESTBASE>/test/peer/c/3/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/3/f'
Removing directory <TESTBASE>/test/peer/c/3/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/3/f, param2: <TESTBASE>/test/peer/c/3/f/%, param3: peer
Removing <TESTBASE>/test/peer/c/3/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e/ignored.o
Running check for <TESTBASE>/test/peer/c/3/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/3/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/3/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/3/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/3/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/3/e/ignored.o'
Removing <TESTBASE>/test/peer/c/3/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e/f1.txt
Running check for <TESTBASE>/test/peer/c/3/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/3/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/3/e/f1.txt
backup <TESTBASE>/test/peer/c/3/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/3/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/3/e/f1.txt'
Removing <TESTBASE>/test/peer/c/3/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/3/e'
Removing directory <TESTBASE>/test/peer/c/3/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/3/e, param2: <TESTBASE>/test/peer/c/3/e/%, param3: peer
Removing <TESTBASE>/test/peer/c/3/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d/ignored.o
Running check for <TESTBASE>/test/peer/c/3/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/3/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/3/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/3/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/3/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/3/d/ignored.o'
Removing <TESTBASE>/test/peer/c/3/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d/f1.txt
Running check for <TESTBASE>/test/peer/c/3/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/3/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/3/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/3/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/3/d/f1.txt
backup <TESTBASE>/test/peer/c/3/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/3/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/3/d/f1.txt'
Removing <TESTBASE>/test/peer/c/3/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/3/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/3/d'
Removing directory <TESTBASE>/test/peer/c/3/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/3/d, param2: <TESTBASE>/test/peer/c/3/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/3'
Removing directory <TESTBASE>/test/peer/c/3 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/3, param2: <TESTBASE>/test/peer/c/3/%, param3: peer
Removing <TESTBASE>/test/peer/c/2/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/2/ignored~
Running check for <TESTBASE>/test/peer/c/2/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/c/2/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/c/2/ignored~
Checking for deleted files <TESTBASE>/test/peer/c/2/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/ignored~ is clean
Removing file <TESTBASE>/test/peer/c/2/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/c/2/ignored~'
Removing <TESTBASE>/test/peer/c/2/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f1.txt
Running check for <TESTBASE>/test/peer/c/2/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/2/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/2/f1.txt
backup <TESTBASE>/test/peer/c/2/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/2/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/2/f1.txt'
Removing <TESTBASE>/test/peer/c/2/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/c/2/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f/ignored.o
Running check for <TESTBASE>/test/peer/c/2/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/2/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/2/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/2/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/2/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/2/f/ignored.o'
Removing <TESTBASE>/test/peer/c/2/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f/f1.txt
Running check for <TESTBASE>/test/peer/c/2/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/2/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/2/f/f1.txt
backup <TESTBASE>/test/peer/c/2/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/2/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/2/f/f1.txt'
Removing <TESTBASE>/test/peer/c/2/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/2/f'
Removing directory <TESTBASE>/test/peer/c/2/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/2/f, param2: <TESTBASE>/test/peer/c/2/f/%, param3: peer
Removing <TESTBASE>/test/peer/c/2/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e/ignored.o
Running check for <TESTBASE>/test/peer/c/2/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/2/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/2/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/2/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/2/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/2/e/ignored.o'
Removing <TESTBASE>/test/peer/c/2/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e/f1.txt
Running check for <TESTBASE>/test/peer/c/2/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/2/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/2/e/f1.txt
backup <TESTBASE>/test/peer/c/2/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/2/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/2/e/f1.txt'
Removing <TESTBASE>/test/peer/c/2/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/2/e'
Removing directory <TESTBASE>/test/peer/c/2/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/2/e, param2: <TESTBASE>/test/peer/c/2/e/%, param3: peer
Removing <TESTBASE>/test/peer/c/2/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d/ignored.o
Running check for <TESTBASE>/test/peer/c/2/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/2/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/2/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/2/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/2/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/2/d/ignored.o'
Removing <TESTBASE>/test/peer/c/2/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d/f1.txt
Running check for <TESTBASE>/test/peer/c/2/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/2/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/2/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/2/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/2/d/f1.txt
backup <TESTBASE>/test/peer/c/2/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/2/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/2/d/f1.txt'
Removing <TESTBASE>/test/peer/c/2/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/2/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/2/d'
Removing directory <TESTBASE>/test/peer/c/2/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/2/d, param2: <TESTBASE>/test/peer/c/2/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/2'
Removing directory <TESTBASE>/test/peer/c/2 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/2, param2: <TESTBASE>/test/peer/c/2/%, param3: peer
Removing <TESTBASE>/test/peer/c/1/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/1/ignored~
Running check for <TESTBASE>/test/peer/c/1/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/c/1/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/c/1/ignored~
Checking for deleted files <TESTBASE>/test/peer/c/1/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/ignored~ is clean
Removing file <TESTBASE>/test/peer/c/1/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/c/1/ignored~'
Removing <TESTBASE>/test/peer/c/1/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f1.txt
Running check for <TESTBASE>/test/peer/c/1/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/1/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/1/f1.txt
backup <TESTBASE>/test/peer/c/1/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/1/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/1/f1.txt'
Removing <TESTBASE>/test/peer/c/1/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/c/1/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f/ignored.o
Running check for <TESTBASE>/test/peer/c/1/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/1/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/1/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/1/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/1/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/1/f/ignored.o'
Removing <TESTBASE>/test/peer/c/1/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f/f1.txt
Running check for <TESTBASE>/test/peer/c/1/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/1/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/1/f/f1.txt
backup <TESTBASE>/test/peer/c/1/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/1/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/1/f/f1.txt'
Removing <TESTBASE>/test/peer/c/1/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/1/f'
Removing directory <TESTBASE>/test/peer/c/1/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/1/f, param2: <TESTBASE>/test/peer/c/1/f/%, param3: peer
Removing <TESTBASE>/test/peer/c/1/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e/ignored.o
Running check for <TESTBASE>/test/peer/c/1/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/1/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/1/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/1/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/1/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/1/e/ignored.o'
Removing <TESTBASE>/test/peer/c/1/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e/f1.txt
Running check for <TESTBASE>/test/peer/c/1/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/1/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/1/e/f1.txt
backup <TESTBASE>/test/peer/c/1/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/1/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/1/e/f1.txt'
Removing <TESTBASE>/test/peer/c/1/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/1/e'
Removing directory <TESTBASE>/test/peer/c/1/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/1/e, param2: <TESTBASE>/test/peer/c/1/e/%, param3: peer
Removing <TESTBASE>/test/peer/c/1/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d/ignored.o
Running check for <TESTBASE>/test/peer/c/1/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/c/1/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/c/1/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/c/1/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/c/1/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/c/1/d/ignored.o'
Removing <TESTBASE>/test/peer/c/1/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d/f1.txt
Running check for <TESTBASE>/test/peer/c/1/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/c/1/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/c/1/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/c/1/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/c/1/d/f1.txt
backup <TESTBASE>/test/peer/c/1/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/c/1/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/c/1/d/f1.txt'
Removing <TESTBASE>/test/peer/c/1/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/c/1/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/1/d'
Removing directory <TESTBASE>/test/peer/c/1/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/1/d, param2: <TESTBASE>/test/peer/c/1/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c/1'
Removing directory <TESTBASE>/test/peer/c/1 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c/1, param2: <TESTBASE>/test/peer/c/1/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/c'
Removing directory <TESTBASE>/test/peer/c 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/c, param2: <TESTBASE>/test/peer/c/%, param3: peer
Removing <TESTBASE>/test/peer/b/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/f1.txt
Running check for <TESTBASE>/test/peer/b/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/f1.txt
backup <TESTBASE>/test/peer/b/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/f1.txt'
Removing <TESTBASE>/test/peer/b/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/b/3/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/3/ignored~
Running check for <TESTBASE>/test/peer/b/3/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/b/3/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/b/3/ignored~
Checking for deleted files <TESTBASE>/test/peer/b/3/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/ignored~ is clean
Removing file <TESTBASE>/test/peer/b/3/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/b/3/ignored~'
Removing <TESTBASE>/test/peer/b/3/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f1.txt
Running check for <TESTBASE>/test/peer/b/3/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/3/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/3/f1.txt
backup <TESTBASE>/test/peer/b/3/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/3/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/3/f1.txt'
Removing <TESTBASE>/test/peer/b/3/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/b/3/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f/ignored.o
Running check for <TESTBASE>/test/peer/b/3/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/3/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/3/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/3/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/3/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/3/f/ignored.o'
Removing <TESTBASE>/test/peer/b/3/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f/f1.txt
Running check for <TESTBASE>/test/peer/b/3/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/3/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/3/f/f1.txt
backup <TESTBASE>/test/peer/b/3/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/3/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/3/f/f1.txt'
Removing <TESTBASE>/test/peer/b/3/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/3/f'
Removing directory <TESTBASE>/test/peer/b/3/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/3/f, param2: <TESTBASE>/test/peer/b/3/f/%, param3: peer
Removing <TESTBASE>/test/peer/b/3/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e/ignored.o
Running check for <TESTBASE>/test/peer/b/3/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/3/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/3/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/3/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/3/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/3/e/ignored.o'
Removing <TESTBASE>/test/peer/b/3/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e/f1.txt
Running check for <TESTBASE>/test/peer/b/3/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/3/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/3/e/f1.txt
backup <TESTBASE>/test/peer/b/3/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/3/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/3/e/f1.txt'
Removing <TESTBASE>/test/peer/b/3/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/3/e'
Removing directory <TESTBASE>/test/peer/b/3/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/3/e, param2: <TESTBASE>/test/peer/b/3/e/%, param3: peer
Removing <TESTBASE>/test/peer/b/3/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d/ignored.o
Running check for <TESTBASE>/test/peer/b/3/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/3/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/3/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/3/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/3/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/3/d/ignored.o'
Removing <TESTBASE>/test/peer/b/3/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d/f1.txt
Running check for <TESTBASE>/test/peer/b/3/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/3/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/3/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/3/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/3/d/f1.txt
backup <TESTBASE>/test/peer/b/3/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/3/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/3/d/f1.txt'
Removing <TESTBASE>/test/peer/b/3/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/3/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/3/d'
Removing directory <TESTBASE>/test/peer/b/3/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/3/d, param2: <TESTBASE>/test/peer/b/3/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/3'
Removing directory <TESTBASE>/test/peer/b/3 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/3, param2: <TESTBASE>/test/peer/b/3/%, param3: peer
Removing <TESTBASE>/test/peer/b/2/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/2/ignored~
Running check for <TESTBASE>/test/peer/b/2/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/b/2/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/b/2/ignored~
Checking for deleted files <TESTBASE>/test/peer/b/2/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/ignored~ is clean
Removing file <TESTBASE>/test/peer/b/2/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/b/2/ignored~'
Removing <TESTBASE>/test/peer/b/2/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f1.txt
Running check for <TESTBASE>/test/peer/b/2/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/2/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/2/f1.txt
backup <TESTBASE>/test/peer/b/2/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/2/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/2/f1.txt'
Removing <TESTBASE>/test/peer/b/2/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/b/2/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f/ignored.o
Running check for <TESTBASE>/test/peer/b/2/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/2/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/2/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/2/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/2/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/2/f/ignored.o'
Removing <TESTBASE>/test/peer/b/2/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f/f1.txt
Running check for <TESTBASE>/test/peer/b/2/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/2/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/2/f/f1.txt
backup <TESTBASE>/test/peer/b/2/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/2/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/2/f/f1.txt'
Removing <TESTBASE>/test/peer/b/2/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/2/f'
Removing directory <TESTBASE>/test/peer/b/2/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/2/f, param2: <TESTBASE>/test/peer/b/2/f/%, param3: peer
Removing <TESTBASE>/test/peer/b/2/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e/ignored.o
Running check for <TESTBASE>/test/peer/b/2/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/2/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/2/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/2/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/2/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/2/e/ignored.o'
Removing <TESTBASE>/test/peer/b/2/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e/f1.txt
Running check for <TESTBASE>/test/peer/b/2/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/2/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/2/e/f1.txt
backup <TESTBASE>/test/peer/b/2/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/2/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/2/e/f1.txt'
Removing <TESTBASE>/test/peer/b/2/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/2/e'
Removing directory <TESTBASE>/test/peer/b/2/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/2/e, param2: <TESTBASE>/test/peer/b/2/e/%, param3: peer
Removing <TESTBASE>/test/peer/b/2/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d/ignored.o
Running check for <TESTBASE>/test/peer/b/2/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/2/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/2/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/2/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/2/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/2/d/ignored.o'
Removing <TESTBASE>/test/peer/b/2/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d/f1.txt
Running check for <TESTBASE>/test/peer/b/2/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/2/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/2/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/2/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/2/d/f1.txt
backup <TESTBASE>/test/peer/b/2/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/2/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/2/d/f1.txt'
Removing <TESTBASE>/test/peer/b/2/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/2/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/2/d'
Removing directory <TESTBASE>/test/peer/b/2/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/2/d, param2: <TESTBASE>/test/peer/b/2/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/2'
Removing directory <TESTBASE>/test/peer/b/2 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/2, param2: <TESTBASE>/test/peer/b/2/%, param3: peer
Removing <TESTBASE>/test/peer/b/1/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/1/ignored~
Running check for <TESTBASE>/test/peer/b/1/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/b/1/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/b/1/ignored~
Checking for deleted files <TESTBASE>/test/peer/b/1/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/ignored~ is clean
Removing file <TESTBASE>/test/peer/b/1/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/b/1/ignored~'
Removing <TESTBASE>/test/peer/b/1/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f1.txt
Running check for <TESTBASE>/test/peer/b/1/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/1/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/1/f1.txt
backup <TESTBASE>/test/peer/b/1/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/1/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/1/f1.txt'
Removing <TESTBASE>/test/peer/b/1/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/b/1/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f/ignored.o
Running check for <TESTBASE>/test/peer/b/1/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/1/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/1/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/1/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/1/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/1/f/ignored.o'
Removing <TESTBASE>/test/peer/b/1/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f/f1.txt
Running check for <TESTBASE>/test/peer/b/1/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/1/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/1/f/f1.txt
backup <TESTBASE>/test/peer/b/1/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/1/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/1/f/f1.txt'
Removing <TESTBASE>/test/peer/b/1/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/1/f'
Removing directory <TESTBASE>/test/peer/b/1/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/1/f, param2: <TESTBASE>/test/peer/b/1/f/%, param3: peer
Removing <TESTBASE>/test/peer/b/1/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e/ignored.o
Running check for <TESTBASE>/test/peer/b/1/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/1/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/1/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/1/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/1/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/1/e/ignored.o'
Removing <TESTBASE>/test/peer/b/1/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e/f1.txt
Running check for <TESTBASE>/test/peer/b/1/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/1/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/1/e/f1.txt
backup <TESTBASE>/test/peer/b/1/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/1/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/1/e/f1.txt'
Removing <TESTBASE>/test/peer/b/1/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/1/e'
Removing directory <TESTBASE>/test/peer/b/1/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/1/e, param2: <TESTBASE>/test/peer/b/1/e/%, param3: peer
Removing <TESTBASE>/test/peer/b/1/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d/ignored.o
Running check for <TESTBASE>/test/peer/b/1/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/b/1/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/b/1/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/b/1/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/b/1/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/b/1/d/ignored.o'
Removing <TESTBASE>/test/peer/b/1/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d/f1.txt
Running check for <TESTBASE>/test/peer/b/1/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/b/1/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/b/1/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/b/1/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/b/1/d/f1.txt
backup <TESTBASE>/test/peer/b/1/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/b/1/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/b/1/d/f1.txt'
Removing <TESTBASE>/test/peer/b/1/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/b/1/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/1/d'
Removing directory <TESTBASE>/test/peer/b/1/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/1/d, param2: <TESTBASE>/test/peer/b/1/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b/1'
Removing directory <TESTBASE>/test/peer/b/1 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b/1, param2: <TESTBASE>/test/peer/b/1/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/b'
Removing directory <TESTBASE>/test/peer/b 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/b, param2: <TESTBASE>/test/peer/b/%, param3: peer
Removing <TESTBASE>/test/peer/a/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/f1.txt
Running check for <TESTBASE>/test/peer/a/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/f1.txt
backup <TESTBASE>/test/peer/a/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/f1.txt'
Removing <TESTBASE>/test/peer/a/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/a/3/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/3/ignored~
Running check for <TESTBASE>/test/peer/a/3/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/a/3/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/a/3/ignored~
Checking for deleted files <TESTBASE>/test/peer/a/3/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/ignored~ is clean
Removing file <TESTBASE>/test/peer/a/3/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/a/3/ignored~'
Removing <TESTBASE>/test/peer/a/3/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f1.txt
Running check for <TESTBASE>/test/peer/a/3/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/3/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/3/f1.txt
backup <TESTBASE>/test/peer/a/3/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/3/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/3/f1.txt'
Removing <TESTBASE>/test/peer/a/3/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/a/3/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f/ignored.o
Running check for <TESTBASE>/test/peer/a/3/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/3/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/3/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/3/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/3/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/3/f/ignored.o'
Removing <TESTBASE>/test/peer/a/3/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f/f1.txt
Running check for <TESTBASE>/test/peer/a/3/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/3/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/3/f/f1.txt
backup <TESTBASE>/test/peer/a/3/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/3/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/3/f/f1.txt'
Removing <TESTBASE>/test/peer/a/3/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/3/f'
Removing directory <TESTBASE>/test/peer/a/3/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/3/f, param2: <TESTBASE>/test/peer/a/3/f/%, param3: peer
Removing <TESTBASE>/test/peer/a/3/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e/ignored.o
Running check for <TESTBASE>/test/peer/a/3/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/3/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/3/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/3/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/3/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/3/e/ignored.o'
Removing <TESTBASE>/test/peer/a/3/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e/f1.txt
Running check for <TESTBASE>/test/peer/a/3/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/3/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/3/e/f1.txt
backup <TESTBASE>/test/peer/a/3/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/3/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/3/e/f1.txt'
Removing <TESTBASE>/test/peer/a/3/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/3/e'
Removing directory <TESTBASE>/test/peer/a/3/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/3/e, param2: <TESTBASE>/test/peer/a/3/e/%, param3: peer
Removing <TESTBASE>/test/peer/a/3/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d/ignored.o
Running check for <TESTBASE>/test/peer/a/3/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/3/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/3/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/3/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/3/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/3/d/ignored.o'
Removing <TESTBASE>/test/peer/a/3/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d/f1.txt
Running check for <TESTBASE>/test/peer/a/3/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/3/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/3/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/3/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/3/d/f1.txt
backup <TESTBASE>/test/peer/a/3/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/3/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/3/d/f1.txt'
Removing <TESTBASE>/test/peer/a/3/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/3/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/3/d'
Removing directory <TESTBASE>/test/peer/a/3/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/3/d, param2: <TESTBASE>/test/peer/a/3/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/3'
Removing directory <TESTBASE>/test/peer/a/3 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/3, param2: <TESTBASE>/test/peer/a/3/%, param3: peer
Removing <TESTBASE>/test/peer/a/2/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/2/ignored~
Running check for <TESTBASE>/test/peer/a/2/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/a/2/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/a/2/ignored~
Checking for deleted files <TESTBASE>/test/peer/a/2/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/ignored~ is clean
Removing file <TESTBASE>/test/peer/a/2/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/a/2/ignored~'
Removing <TESTBASE>/test/peer/a/2/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f1.txt
Running check for <TESTBASE>/test/peer/a/2/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/2/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/2/f1.txt
backup <TESTBASE>/test/peer/a/2/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/2/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/2/f1.txt'
Removing <TESTBASE>/test/peer/a/2/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/a/2/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f/ignored.o
Running check for <TESTBASE>/test/peer/a/2/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/2/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/2/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/2/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/2/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/2/f/ignored.o'
Removing <TESTBASE>/test/peer/a/2/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f/f1.txt
Running check for <TESTBASE>/test/peer/a/2/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/2/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/2/f/f1.txt
backup <TESTBASE>/test/peer/a/2/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/2/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/2/f/f1.txt'
Removing <TESTBASE>/test/peer/a/2/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/2/f'
Removing directory <TESTBASE>/test/peer/a/2/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/2/f, param2: <TESTBASE>/test/peer/a/2/f/%, param3: peer
Removing <TESTBASE>/test/peer/a/2/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e/ignored.o
Running check for <TESTBASE>/test/peer/a/2/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/2/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/2/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/2/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/2/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/2/e/ignored.o'
Removing <TESTBASE>/test/peer/a/2/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e/f1.txt
Running check for <TESTBASE>/test/peer/a/2/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/2/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/2/e/f1.txt
backup <TESTBASE>/test/peer/a/2/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/2/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/2/e/f1.txt'
Removing <TESTBASE>/test/peer/a/2/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/2/e'
Removing directory <TESTBASE>/test/peer/a/2/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/2/e, param2: <TESTBASE>/test/peer/a/2/e/%, param3: peer
Removing <TESTBASE>/test/peer/a/2/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d/ignored.o
Running check for <TESTBASE>/test/peer/a/2/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/2/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/2/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/2/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/2/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/2/d/ignored.o'
Removing <TESTBASE>/test/peer/a/2/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d/f1.txt
Running check for <TESTBASE>/test/peer/a/2/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/2/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/2/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/2/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/2/d/f1.txt
backup <TESTBASE>/test/peer/a/2/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/2/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/2/d/f1.txt'
Removing <TESTBASE>/test/peer/a/2/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/2/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/2/d'
Removing directory <TESTBASE>/test/peer/a/2/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/2/d, param2: <TESTBASE>/test/peer/a/2/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/2'
Removing directory <TESTBASE>/test/peer/a/2 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/2, param2: <TESTBASE>/test/peer/a/2/%, param3: peer
Removing <TESTBASE>/test/peer/a/1/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/1/ignored~
Running check for <TESTBASE>/test/peer/a/1/ignored~ ...
Checking for modified files <TESTBASE>/test/peer/a/1/ignored~ 
No match. Don't check at all: <TESTBASE>/test/peer/a/1/ignored~
Checking for deleted files <TESTBASE>/test/peer/a/1/ignored~.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/ignored~ is clean
Removing file <TESTBASE>/test/peer/a/1/ignored~
Locking 'DELETE:<TESTBASE>/test/peer/a/1/ignored~'
Removing <TESTBASE>/test/peer/a/1/ignored~ from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/ignored~, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f1.txt
Running check for <TESTBASE>/test/peer/a/1/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/1/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/1/f1.txt
backup <TESTBASE>/test/peer/a/1/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/1/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/1/f1.txt'
Removing <TESTBASE>/test/peer/a/1/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/f1.txt, param2: peer
Removing <TESTBASE>/test/peer/a/1/f/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f/ignored.o
Running check for <TESTBASE>/test/peer/a/1/f/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/1/f/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/1/f/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/1/f/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/1/f/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/1/f/ignored.o'
Removing <TESTBASE>/test/peer/a/1/f/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/f/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f/f1.txt
Running check for <TESTBASE>/test/peer/a/1/f/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/f/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/1/f/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/f/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/1/f/f1.txt
backup <TESTBASE>/test/peer/a/1/f/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/1/f/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/1/f/f1.txt'
Removing <TESTBASE>/test/peer/a/1/f/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/f/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/1/f'
Removing directory <TESTBASE>/test/peer/a/1/f 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/1/f, param2: <TESTBASE>/test/peer/a/1/f/%, param3: peer
Removing <TESTBASE>/test/peer/a/1/e/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e/ignored.o
Running check for <TESTBASE>/test/peer/a/1/e/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/1/e/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/1/e/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/1/e/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/1/e/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/1/e/ignored.o'
Removing <TESTBASE>/test/peer/a/1/e/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/e/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e/f1.txt
Running check for <TESTBASE>/test/peer/a/1/e/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/e/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/1/e/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/e/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/1/e/f1.txt
backup <TESTBASE>/test/peer/a/1/e/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/1/e/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/1/e/f1.txt'
Removing <TESTBASE>/test/peer/a/1/e/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/e/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/1/e'
Removing directory <TESTBASE>/test/peer/a/1/e 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/1/e, param2: <TESTBASE>/test/peer/a/1/e/%, param3: peer
Removing <TESTBASE>/test/peer/a/1/d/* ..
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d/ignored.o
Running check for <TESTBASE>/test/peer/a/1/d/ignored.o ...
Checking for modified files <TESTBASE>/test/peer/a/1/d/ignored.o 
No match. Don't check at all: <TESTBASE>/test/peer/a/1/d/ignored.o
Checking for deleted files <TESTBASE>/test/peer/a/1/d/ignored.o.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d/ignored.o is clean
Removing file <TESTBASE>/test/peer/a/1/d/ignored.o
Locking 'DELETE:<TESTBASE>/test/peer/a/1/d/ignored.o'
Removing <TESTBASE>/test/peer/a/1/d/ignored.o from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/d/ignored.o, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d/f1.txt
Running check for <TESTBASE>/test/peer/a/1/d/f1.txt ...
Checking for modified files <TESTBASE>/test/peer/a/1/d/f1.txt 
Checking for deleted files <TESTBASE>/test/peer/a/1/d/f1.txt.
daemon_check_dirty: <TESTBASE>/test/peer/a/1/d/f1.txt is clean
Removing file <TESTBASE>/test/peer/a/1/d/f1.txt
backup <TESTBASE>/test/peer/a/1/d/f1.txt 0 
Changing owner of /tmp/csync2/<BACKUP> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/a/1/d/f1.txt.3 due  3 
Locking 'DELETE:<TESTBASE>/test/peer/a/1/d/f1.txt'
Removing <TESTBASE>/test/peer/a/1/d/f1.txt from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/a/1/d/f1.txt, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/1/d'
Removing directory <TESTBASE>/test/peer/a/1/d 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/1/d, param2: <TESTBASE>/test/peer/a/1/d/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a/1'
Removing directory <TESTBASE>/test/peer/a/1 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a/1, param2: <TESTBASE>/test/peer/a/1/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/a'
Removing directory <TESTBASE>/test/peer/a 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/a, param2: <TESTBASE>/test/peer/a/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Removing directory <TESTBASE>/test/peer 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer, param2: <TESTBASE>/test/peer/%, param3: peer
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 35
Deleted recursive from clean directory (<TESTBASE>/test/peer): 78 1 
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
