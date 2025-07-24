csync_hostinfo 0x0
standalone: 64 server_standalone > 0: true
No command line port. Reading config
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '<TESTBASE>/test/peer'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test local
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first local
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger local
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older local
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger local
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller local
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left local
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right local
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action local
New group:host: test_action other
New group:host:pattern test_action other %test%/action
After config read, csync_hostinfo = 0x503000001390
Found my alias peer localhost 30861
csync_config_destroy
csync_config_destroy end
Binding to 30861 IPv2
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '<TESTBASE>/test/peer'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test local
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first local
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger local
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older local
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger local
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller local
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left local
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right local
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action local
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: DEBUG rc=0 '' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
DEBUG daemon: HELLO rc=3 'local' '' '-' 
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
check_mod: No such file '<TESTBASE>/test/peer' .
Checking for deleted files <TESTBASE>/test/peer.
File <TESTBASE>/test/peer. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
check_mod: No such file '<TESTBASE>/test/peer/new' .
Checking for deleted files <TESTBASE>/test/peer/new.
File <TESTBASE>/test/peer/new. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/new'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/new' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/new rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Updated(mkdir) local:<TESTBASE>/test/peer/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/new_file' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/new/new_file - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
daemon_check_dirty: <TESTBASE>/test/peer/new/new_file
Running check for <TESTBASE>/test/peer/new/new_file ...
Checking for modified files <TESTBASE>/test/peer/new/new_file 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
check_mod: No such file '<TESTBASE>/test/peer/new/new_file' .
Checking for deleted files <TESTBASE>/test/peer/new/new_file.
File <TESTBASE>/test/peer/new/new_file. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new/new_file is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new/new_file'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new/new_file' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/new/new_file 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
Receiving 4 bytes (octet-stream)..
Reading chunk 4 bytes of 4
Writing chunk 4 bytes of 4 to file
Got 4 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/new/new_file rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/new/new_file' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
Updated(create) local:<TESTBASE>/test/peer/new/new_file  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Daemon end_command <TESTBASE>/test/peer/new/new_file CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/hardlinked' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/new_file')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/new_file' '-' 
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked %25test%25/new/new_file '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked <TESTBASE>/test/peer/new/new_file        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked
Running check for <TESTBASE>/test/peer/new/hardlinked ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked.
File <TESTBASE>/test/peer/new/hardlinked. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked 
DEBUG daemon: MKHARDLINK rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked' '<TESTBASE>/test/peer/new/new_file' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked <TESTBASE>/test/peer/new/new_file 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Daemon end_command <TESTBASE>/test/peer/new/hardlinked MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

DEBUG daemon: BYE rc=5 'local' '' '-' 
goto nofork.
Redis closed.
csync_config_destroy
csync_config_destroy end
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '<TESTBASE>/test/peer'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test local
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first local
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger local
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older local
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger local
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller local
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left local
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right local
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action local
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: DEBUG rc=0 '' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
DEBUG daemon: HELLO rc=3 'local' '' '-' 
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/new.
File <TESTBASE>/test/peer/new. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Updated(mod) local:<TESTBASE>/test/peer/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/hardlinked_2' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/hardlinked')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/hardlinked to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked' '-' 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 %25test%25/new/hardlinked '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/hardlinked        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_2
Running check for <TESTBASE>/test/peer/new/hardlinked_2 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_2 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_2' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_2.
File <TESTBASE>/test/peer/new/hardlinked_2. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_2 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
HARDLINK: <TESTBASE>/test/peer/new/hardlinked -> <TESTBASE>/test/peer/new/hardlinked_2 
DEBUG daemon: MKHARDLINK rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked_2' '<TESTBASE>/test/peer/new/hardlinked' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_2
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_2
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/hardlinked 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_2 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/hardlinked_3' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/hardlinked')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/hardlinked to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked' '-' 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 %25test%25/new/hardlinked '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/hardlinked        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_3
Running check for <TESTBASE>/test/peer/new/hardlinked_3 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_3 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_3' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_3.
File <TESTBASE>/test/peer/new/hardlinked_3. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_3 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
HARDLINK: <TESTBASE>/test/peer/new/hardlinked -> <TESTBASE>/test/peer/new/hardlinked_3 
DEBUG daemon: MKHARDLINK rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked_3' '<TESTBASE>/test/peer/new/hardlinked' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_3
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_3
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/hardlinked 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_3 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

DEBUG daemon: BYE rc=5 'local' '' '-' 
goto nofork.
Redis closed.
csync_config_destroy
csync_config_destroy end
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '<TESTBASE>/test/peer'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test local
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first local
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger local
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older local
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger local
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller local
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left local
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right local
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action local
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: DEBUG rc=0 '' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
DEBUG daemon: HELLO rc=3 'local' '' '-' 
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer' '-' 
Daemon end_command <TESTBASE>/test/peer SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/hardlinked')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/hardlinked to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked' '-' 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_2
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/hardlinked_2')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/hardlinked_2 to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked_2' '-' 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_2 SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_3
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/hardlinked_3')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/hardlinked_3 to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked_3' '-' 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_3 SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/hardlinked_4' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/hardlinked_5' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/new_file')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/new_file' '-' 
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

DEBUG daemon: BYE rc=5 'local' '' '-' 
goto nofork.
Redis closed.
csync_config_destroy
csync_config_destroy end
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '<TESTBASE>/test/peer'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test local
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first local
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger local
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older local
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger local
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller local
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left local
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right local
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action local
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: DEBUG rc=0 '' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
DEBUG daemon: HELLO rc=3 'local' '' '-' 
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/new.
File <TESTBASE>/test/peer/new. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Updated(mod) local:<TESTBASE>/test/peer/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/hardlinked_4' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/new_file')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/new_file' '-' 
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 %25test%25/new/new_file '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/new_file        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_4
Running check for <TESTBASE>/test/peer/new/hardlinked_4 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_4 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_4' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_4.
File <TESTBASE>/test/peer/new/hardlinked_4. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_4 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_4 
DEBUG daemon: MKHARDLINK rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked_4' '<TESTBASE>/test/peer/new/new_file' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_4
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_4
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/new_file 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_4
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_4 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/hardlinked_5' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/new_file
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/new/new_file')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new/new_file' '-' 
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 %25test%25/new/new_file '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/new_file        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_5
Running check for <TESTBASE>/test/peer/new/hardlinked_5 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_5 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_5' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_5.
File <TESTBASE>/test/peer/new/hardlinked_5. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_5 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_5 
DEBUG daemon: MKHARDLINK rc=0 'local' '<TESTBASE>/test/peer/new/hardlinked_5' '<TESTBASE>/test/peer/new/new_file' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_5
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/hardlinked_5
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/new_file
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/new_file 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/hardlinked_5
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_5 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

DEBUG daemon: BYE rc=5 'local' '' '-' 
goto nofork.
Redis closed.
csync_config_destroy
csync_config_destroy end
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '<TESTBASE>/test/peer'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test local
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first local
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger local
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older local
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger local
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller local
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left local
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right local
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action local
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: DEBUG rc=0 '' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
DEBUG daemon: HELLO rc=3 'local' '' '-' 
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/new.
File <TESTBASE>/test/peer/new. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Updated(mod) local:<TESTBASE>/test/peer/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/was_hardlink user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/was_hardlink user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new/was_hardlink' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/was_hardlink - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/new/was_hardlink - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
daemon_check_dirty: <TESTBASE>/test/peer/new/was_hardlink
Running check for <TESTBASE>/test/peer/new/was_hardlink ...
Checking for modified files <TESTBASE>/test/peer/new/was_hardlink 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
check_mod: No such file '<TESTBASE>/test/peer/new/was_hardlink' .
Checking for deleted files <TESTBASE>/test/peer/new/was_hardlink.
File <TESTBASE>/test/peer/new/was_hardlink. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new/was_hardlink is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new/was_hardlink'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new/was_hardlink' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/new/was_hardlink 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
Receiving 4 bytes (octet-stream)..
Reading chunk 4 bytes of 4
Writing chunk 4 bytes of 4 to file
Got 4 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/new/was_hardlink rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/new/was_hardlink' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/was_hardlink
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new/was_hardlink
Updated(create) local:<TESTBASE>/test/peer/new/was_hardlink  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new/was_hardlink
Daemon end_command <TESTBASE>/test/peer/new/was_hardlink CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

DEBUG daemon: BYE rc=5 'local' '' '-' 
goto nofork.
Redis closed.
csync_config_destroy
csync_config_destroy end
