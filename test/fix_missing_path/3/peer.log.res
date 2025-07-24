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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Path not found <TESTBASE>/test
CONN local < ERROR not found): 
DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/recursive/1/2/3/4/5' '-' 
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

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive
daemon_check_dirty: <TESTBASE>/test/peer/recursive
Running check for <TESTBASE>/test/peer/recursive ...
Checking for modified files <TESTBASE>/test/peer/recursive 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive
check_mod: No such file '<TESTBASE>/test/peer/recursive' .
Checking for deleted files <TESTBASE>/test/peer/recursive.
File <TESTBASE>/test/peer/recursive. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/recursive is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/recursive rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/recursive' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive
Updated(mkdir) local:<TESTBASE>/test/peer/recursive  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive
Daemon end_command <TESTBASE>/test/peer/recursive MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1
Running check for <TESTBASE>/test/peer/recursive/1 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1
check_mod: No such file '<TESTBASE>/test/peer/recursive/1' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1.
File <TESTBASE>/test/peer/recursive/1. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/recursive/1 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/recursive/1' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1
Daemon end_command <TESTBASE>/test/peer/recursive/1 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2
Running check for <TESTBASE>/test/peer/recursive/1/2 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2.
File <TESTBASE>/test/peer/recursive/1/2. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/recursive/1/2 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/recursive/1/2' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2
Daemon end_command <TESTBASE>/test/peer/recursive/1/2 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3
Running check for <TESTBASE>/test/peer/recursive/1/2/3 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3.
File <TESTBASE>/test/peer/recursive/1/2/3. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2/3 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/recursive/1/2/3' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3/4' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4.
File <TESTBASE>/test/peer/recursive/1/2/3/4. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/recursive/1/2/3/4' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3/4  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/recursive/1/2/3/4/5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5 ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3/4/5' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5.
File <TESTBASE>/test/peer/recursive/1/2/3/4/5. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4/5'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4/5' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/recursive/1/2/3/4/5' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4/5
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4/5
Updated(mkdir) local:<TESTBASE>/test/peer/recursive/1/2/3/4/5  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4/5 MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Running check for <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
check_mod: No such file '<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c' .
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.
File <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 1 0
CONN local < OK 
CONN local > 'octet-stream 11'
Got octet-stream 11
Content length in buffer: 'octet-stream 11' size: 11 rc: 0 (octet-stream)
Receiving 11 bytes (octet-stream)..
Reading chunk 11 bytes of 11
Writing chunk 11 bytes of 11 to file
Got 11 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Updated(create) local:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/recursive/1/2/3/4/5 xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5
settime <TESTBASE>/test/peer/recursive/1/2/3/4/5 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/recursive/1/2/3/4/5' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4/5
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4/5
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4/5 SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/recursive/1/2/3/4 xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4
settime <TESTBASE>/test/peer/recursive/1/2/3/4 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/recursive/1/2/3/4' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/recursive/1/2/3/4
Daemon end_command <TESTBASE>/test/peer/recursive/1/2/3/4 SETTIME 0 
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
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/peer has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 512
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer 
Inserted/updated <TESTBASE>/test/peer rows matched: 1
Checking for deleted files <TESTBASE>/test/peer.
File <TESTBASE>/test/peer. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer is just marked dirty
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
backup <TESTBASE>/test/peer 0 
Directory: <TESTBASE>/test/peer skipping
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
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.
File <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
daemon_check_dirty: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c is clean
Removing file <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c
backup <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/recursive -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/recursive 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/recursive/1 -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/recursive/1 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/recursive/1/2 -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/recursive/1/2 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3 -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4 -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4/5 -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4/5 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c filename: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c.3 due  3 
Copying data from <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c to backup file /tmp/csync2<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c' '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/recursive/1/2/3/4/5/file.c, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4/5'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4/5' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/recursive/1/2/3/4/5 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2/3/4/5, param2: <TESTBASE>/test/peer/recursive/1/2/3/4/5/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3/4' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/recursive/1/2/3/4 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2/3/4, param2: <TESTBASE>/test/peer/recursive/1/2/3/4/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2/3' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/recursive/1/2/3 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2/3, param2: <TESTBASE>/test/peer/recursive/1/2/3/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1/2' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/recursive/1/2 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1/2, param2: <TESTBASE>/test/peer/recursive/1/2/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive/1' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/recursive/1 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive/1, param2: <TESTBASE>/test/peer/recursive/1/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/recursive' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/recursive 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/recursive, param2: <TESTBASE>/test/peer/recursive/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer, param2: <TESTBASE>/test/peer/%, param3: peer
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 7 1 
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
