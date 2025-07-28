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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/usr' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/usr - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
daemon_check_dirty: <TESTBASE>/test/peer/usr
Running check for <TESTBASE>/test/peer/usr ...
Checking for modified files <TESTBASE>/test/peer/usr 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
check_mod: No such file '<TESTBASE>/test/peer/usr' .
Checking for deleted files <TESTBASE>/test/peer/usr.
File <TESTBASE>/test/peer/usr. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/usr is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/usr'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/usr' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/usr rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/usr' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
Updated(mkdir) local:<TESTBASE>/test/peer/usr  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Daemon end_command <TESTBASE>/test/peer/usr MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/usr/local' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/usr/local - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
daemon_check_dirty: <TESTBASE>/test/peer/usr/local
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
check_mod: No such file '<TESTBASE>/test/peer/usr/local' .
Checking for deleted files <TESTBASE>/test/peer/usr/local.
File <TESTBASE>/test/peer/usr/local. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/usr/local is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/usr/local'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/usr/local' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/usr/local rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr/local rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/usr/local' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Daemon end_command <TESTBASE>/test/peer/usr/local MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
check_mod: No such file '<TESTBASE>/test/peer/usr/local/sbin' .
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
File <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/usr/local/sbin'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/usr/local/sbin' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/usr/local/sbin rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Daemon end_command <TESTBASE>/test/peer/usr/local SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
Daemon end_command <TESTBASE>/test/peer/usr SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
File <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Daemon end_command <TESTBASE>/test/peer/usr/local SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
Daemon end_command <TESTBASE>/test/peer/usr SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
Daemon end_command <TESTBASE>/test/peer/usr/local SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
daemon_check_dirty: <TESTBASE>/test/peer/usr/local
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local.
File <TESTBASE>/test/peer/usr/local. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
daemon_check_dirty: <TESTBASE>/test/peer/usr/local is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
setown <TESTBASE>/test/peer/usr/local rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/usr/local' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Updated(mod) local:<TESTBASE>/test/peer/usr/local  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Daemon end_command <TESTBASE>/test/peer/usr/local MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Daemon end_command <TESTBASE>/test/peer/usr/local SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
Daemon end_command <TESTBASE>/test/peer/usr SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
Daemon end_command <TESTBASE>/test/peer/usr/local SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
File <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin/hej user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/usr/local/sbin/hej' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/usr/local/sbin/hej - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
check_mod: No such file '<TESTBASE>/test/peer/usr/local/sbin/hej' .
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
File <TESTBASE>/test/peer/usr/local/sbin/hej. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin/hej'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin/hej' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/usr/local/sbin/hej 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
Receiving 4 bytes (octet-stream)..
Reading chunk 4 bytes of 4
Writing chunk 4 bytes of 4 to file
Got 4 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/usr/local/sbin/hej rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin/hej' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin/hej
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin/hej
Updated(create) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin/hej CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local/sbin xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Daemon end_command <TESTBASE>/test/peer/usr/local SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
Daemon end_command <TESTBASE>/test/peer/usr SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
File <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group'
Command: local: STAT <TESTBASE>/test/peer/usr/local/sbin/hej user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

DEBUG daemon: STAT rc=2 'local' '<TESTBASE>/test/peer/usr/local/sbin/hej' '-' 
CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej '
Command: local: DEL <TESTBASE>/test/peer/usr/local/sbin/hej         
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin/hej' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
File <TESTBASE>/test/peer/usr/local/sbin/hej. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
backup <TESTBASE>/test/peer/usr/local/sbin/hej 0 
backupdir stat: /tmp/csync2/export -1 No such file or directory
mkdir /tmp/csync2/export 
backupdir stat: /tmp/csync2/export/home -1 No such file or directory
mkdir /tmp/csync2/export/home 
Changing owner of /tmp/csync2/export/home to user <UID> and group <GID>, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis -1 No such file or directory
mkdir /tmp/csync2/export/home/dennis 
backupdir stat: /tmp/csync2/export/home/dennis/Projects -1 No such file or directory
mkdir /tmp/csync2/export/home/dennis/Projects 
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 -1 No such file or directory
mkdir /tmp/csync2/export/home/dennis/Projects/csync2 
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 -1 No such file or directory
mkdir /tmp/csync2/export/home/dennis/Projects/csync2/csync2 
backupdir stat: /tmp/csync2<TESTBASE> -1 No such file or directory
mkdir /tmp/csync2<TESTBASE> 
backupdir stat: /tmp/csync2<TESTBASE>/test -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/usr -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/usr 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/usr/local -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/usr/local 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej filename: <TESTBASE>/test/peer/usr/local/sbin/hej i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.3 due  3 
Copying data from <TESTBASE>/test/peer/usr/local/sbin/hej to backup file /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/usr/local/sbin/hej'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/usr/local/sbin/hej' '<MTIME>' NX EX 1 -> OK
DEL local:<TESTBASE>/test/peer/usr/local/sbin/hej rc: 0
DEBUG daemon: DEL rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin/hej' '-' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/usr/local/sbin/hej, param2: peer
Updated(del) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Daemon end_command <TESTBASE>/test/peer/usr/local/sbin/hej DEL 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Daemon end_command <TESTBASE>/test/peer/usr/local SETTIME 0 
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

CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
Command: local: STAT <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

DEBUG daemon: STAT rc=2 'local' '<TESTBASE>/test/peer' '-' 
CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Command: local: DEL <TESTBASE>/test/peer         
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer.
File <TESTBASE>/test/peer. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
backup <TESTBASE>/test/peer 0 
Directory: <TESTBASE>/test/peer skipping
3 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 3 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/usr/* ..
Removing <TESTBASE>/test/peer/usr/local/* ..
Removing <TESTBASE>/test/peer/usr/local/sbin/* ..
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/usr/local/sbin'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/usr/local/sbin' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/usr/local/sbin 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/usr/local/sbin, param2: <TESTBASE>/test/peer/usr/local/sbin/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/usr/local'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/usr/local' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/usr/local 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/usr/local, param2: <TESTBASE>/test/peer/usr/local/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/usr'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/usr' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/usr 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/usr, param2: <TESTBASE>/test/peer/usr/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer, param2: <TESTBASE>/test/peer/%, param3: peer
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
DEL local:<TESTBASE>/test/peer rc: 1
DEBUG daemon: DEL rc=1 'local' '<TESTBASE>/test/peer' '-' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer, param2: peer
Updated(del) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer DEL 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

DEBUG daemon: BYE rc=5 'local' '' '-' 
goto nofork.
Redis closed.
csync_config_destroy
csync_config_destroy end
