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
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 22 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 22 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
check_mod: No such file '<TESTBASE>/test/peer/auto' .
Checking for deleted files <TESTBASE>/test/peer/auto.
daemon_check_dirty: <TESTBASE>/test/peer/auto is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/auto'
mkdir <TESTBASE>/test/peer/auto rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto rc = 0 gid: <UID> gid: <GID> errno = 22 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 22 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/auto  
Daemon end_command <TESTBASE>/test/peer/auto MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/younger failed stat
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/younger failed stat
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger
Running check for <TESTBASE>/test/peer/auto/younger ...
Checking for modified files <TESTBASE>/test/peer/auto/younger 
check_mod: No such file '<TESTBASE>/test/peer/auto/younger' .
Checking for deleted files <TESTBASE>/test/peer/auto/younger.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger is clean
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/younger failed stat
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/auto/younger'
mkdir <TESTBASE>/test/peer/auto/younger rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto/younger rc = 0 gid: <UID> gid: <GID> errno = 22 err = 
setmod <TESTBASE>/test/peer/auto/younger rc = 0 mod: 16877 errno = 22 err = 
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/auto/younger  
Daemon end_command <TESTBASE>/test/peer/auto/younger MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/auto SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger/local_oldest user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=13

Sending sig_file for <TESTBASE>/test/peer/auto/younger/local_oldest to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/auto/younger/local_oldest SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/auto/younger/local_oldest - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
New file: <TESTBASE>/test/peer/auto/younger/local_oldest
csync_check_file_same_dev_inode <TESTBASE>/test/peer/auto/younger/local_oldest <TESTBASE>/test/peer/auto/younger/local_oldest
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/auto/younger/local_oldest' '-'.
Inserted/updated <TESTBASE>/test/peer/auto/younger/local_oldest rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest is just marked dirty
daemon_check_dirty: peer operation  local <TESTBASE>/test/peer/auto/younger/local_oldest NEW
File <TESTBASE>/test/peer/auto/younger/local_oldest is dirty here: NEW 2
File local:<TESTBASE>/test/peer/auto/younger/local_oldest is dirty here. Continuing.
Daemon end_command <TESTBASE>/test/peer/auto/younger/local_oldest PATCH 3 File is also marked dirty here!
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/auto/younger/local_oldest)
CONN local < File also marked dirty here! 
CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest'
Command: local: GETTM <TESTBASE>/test/peer/auto/younger/local_oldest         
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
CONN local < OK (data_follows).

CONN local < 1623146400

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto/younger xxxxxxxx        
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/auto/younger SETTIME 0 
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
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Inserted/updated <TESTBASE>/test/peer rows matched: 1
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is just marked dirty
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 22 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 22 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/auto SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Inserted/updated <TESTBASE>/test/peer/auto rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/auto.
daemon_check_dirty: <TESTBASE>/test/peer/auto is just marked dirty
setown <TESTBASE>/test/peer/auto rc = 0 gid: <UID> gid: <GID> errno = 22 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 22 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/auto  
Daemon end_command <TESTBASE>/test/peer/auto MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/auto/younger SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger
Running check for <TESTBASE>/test/peer/auto/younger ...
Checking for modified files <TESTBASE>/test/peer/auto/younger 
Checking for deleted files <TESTBASE>/test/peer/auto/younger.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger is clean
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolved. clear dirty
setown <TESTBASE>/test/peer/auto/younger rc = 0 gid: <UID> gid: <GID> errno = 22 err = 
setmod <TESTBASE>/test/peer/auto/younger rc = 0 mod: 16877 errno = 22 err = 
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/auto/younger  
Daemon end_command <TESTBASE>/test/peer/auto/younger MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger/local_oldest user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=13

Sending sig_file for <TESTBASE>/test/peer/auto/younger/local_oldest to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/auto/younger/local_oldest SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/auto/younger/local_oldest - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest is clean
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
backup <TESTBASE>/test/peer/auto/younger/local_oldest 0 
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3 due  3 
CONN local < OK 
Sending sig_file for <TESTBASE>/test/peer/auto/younger/local_oldest to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/younger/.local_oldest.XXXXXX'
Locking 'MOVED_TO:<TESTBASE>/test/peer/auto/younger/local_oldest'
settime <TESTBASE>/test/peer/auto/younger/local_oldest rc = 0 time: 0 errno = 0 err = 
Updated(patch) local:<TESTBASE>/test/peer/auto/younger/local_oldest  
Daemon end_command <TESTBASE>/test/peer/auto/younger/local_oldest PATCH 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto/younger xxxxxxxx        
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/auto/younger SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/auto SETTIME 0 
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
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

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
Removing <TESTBASE>/test/peer/auto/* ..
Removing <TESTBASE>/test/peer/auto/younger/* ..
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest is clean
Removing file <TESTBASE>/test/peer/auto/younger/local_oldest
backup <TESTBASE>/test/peer/auto/younger/local_oldest 0 
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3 due  3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest' to '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.1'. rc = 0
Locking 'DELETE:<TESTBASE>/test/peer/auto/younger/local_oldest'
Removing <TESTBASE>/test/peer/auto/younger/local_oldest from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/auto/younger/local_oldest, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/auto/younger'
Removing directory <TESTBASE>/test/peer/auto/younger 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/auto/younger, param2: <TESTBASE>/test/peer/auto/younger/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/auto'
Removing directory <TESTBASE>/test/peer/auto 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/auto, param2: <TESTBASE>/test/peer/auto/%, param3: peer
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
