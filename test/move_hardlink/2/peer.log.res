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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir
Running check for <TESTBASE>/test/peer/Maildir ...
Checking for modified files <TESTBASE>/test/peer/Maildir 
check_mod: No such file '<TESTBASE>/test/peer/Maildir' .
Checking for deleted files <TESTBASE>/test/peer/Maildir.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir'
mkdir <TESTBASE>/test/peer/Maildir rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir  
Daemon end_command <TESTBASE>/test/peer/Maildir MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash
Running check for <TESTBASE>/test/peer/Maildir/.Trash ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash 
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash'
mkdir <TESTBASE>/test/peer/Maildir/.Trash rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash  
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash/cur'
mkdir <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
check_mod: No such file '<TESTBASE>/test/peer/Maildir/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/cur'
mkdir <TESTBASE>/test/peer/Maildir/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/cur  
Daemon end_command <TESTBASE>/test/peer/Maildir/cur MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
check_mod: No such file '<TESTBASE>/test/peer/Maildir/tmp' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/tmp'
mkdir <TESTBASE>/test/peer/Maildir/tmp rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/tmp  
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp/123 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/Maildir/tmp/123 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp/123
Running check for <TESTBASE>/test/peer/Maildir/tmp/123 ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp/123 
check_mod: No such file '<TESTBASE>/test/peer/Maildir/tmp/123' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp/123.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp/123 is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/tmp/123'
daemon CREATE <TESTBASE>/test/peer/Maildir/tmp/123 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/Maildir/tmp/123 rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/Maildir/tmp/123  
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp/123 CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/tmp xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur is clean
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/Maildir/cur SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur is clean
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
Daemon end_command <TESTBASE>/test/peer/Maildir/cur MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/Maildir/tmp SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp is clean
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/Maildir/tmp  
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 %25test%25/Maildir/cur/123,Sab'
Command: local: MV <TESTBASE>/test/peer/Maildir/tmp/123 <TESTBASE>/test/peer/Maildir/cur/123,Sab        
DAEMON_MV <TESTBASE>/test/peer/Maildir/tmp/123 Locking MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/123,Sab 1
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/123,Sab'
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/Maildir/tmp/123, param2: peer
Updated(mv) local:<TESTBASE>/test/peer/Maildir/tmp/123 <TESTBASE>/test/peer/Maildir/cur/123,Sab 
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp/123 MV 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/Maildir/cur/123,Sab to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/Maildir/cur/123,Sab SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,Sab %25test%25/Maildir/cur/123,Sab '
Command: local: MKHARDLINK <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/peer/Maildir/cur/123,Sab        
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab 
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab is clean
HARDLINK: <TESTBASE>/test/peer/Maildir/cur/123,Sab -> <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab 
Updated(mkhardlink) local:<TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/peer/Maildir/cur/123,Sab 
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash/cur xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/tmp xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/cur xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir/cur SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash xxxxxxxx        
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
