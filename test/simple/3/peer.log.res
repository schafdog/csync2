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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/.Test user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/.Test' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/.Test - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/.Test - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
daemon_check_dirty: <TESTBASE>/test/peer/.Test
Running check for <TESTBASE>/test/peer/.Test ...
Checking for modified files <TESTBASE>/test/peer/.Test 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
check_mod: No such file '<TESTBASE>/test/peer/.Test' .
Checking for deleted files <TESTBASE>/test/peer/.Test.
File <TESTBASE>/test/peer/.Test. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/.Test is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.Test'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.Test' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/.Test 1 0
CONN local < OK 
CONN local > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
Receiving 0 bytes (octet-stream)..
settime <TESTBASE>/test/peer/.Test rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/.Test' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/.Test
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/.Test
Updated(create) local:<TESTBASE>/test/peer/.Test  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Daemon end_command <TESTBASE>/test/peer/.Test CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/A user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/A' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/A - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/A - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
daemon_check_dirty: <TESTBASE>/test/peer/A
Running check for <TESTBASE>/test/peer/A ...
Checking for modified files <TESTBASE>/test/peer/A 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
check_mod: No such file '<TESTBASE>/test/peer/A' .
Checking for deleted files <TESTBASE>/test/peer/A.
File <TESTBASE>/test/peer/A. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/A is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/A'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/A' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/A 1 0
CONN local < OK 
CONN local > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
Receiving 0 bytes (octet-stream)..
settime <TESTBASE>/test/peer/A rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/A' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/A
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/A
Updated(create) local:<TESTBASE>/test/peer/A  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Daemon end_command <TESTBASE>/test/peer/A CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/new_file 'N' all' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/new_file 'N' all - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
check_mod: No such file '<TESTBASE>/test/peer/new_file 'N' all' .
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
File <TESTBASE>/test/peer/new_file 'N' all. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/new_file 'N' all 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
Receiving 4 bytes (octet-stream)..
Reading chunk 4 bytes of 4
Writing chunk 4 bytes of 4 to file
Got 4 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/new_file 'N' all' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all
Updated(create) local:<TESTBASE>/test/peer/new_file 'N' all  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

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

CONN local > 'LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 '
Command: local: LIST <TESTBASE>/test/peer 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1       
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
peername: local file: <TESTBASE>/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
DbSql::list_file peer <-> local <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
DbSql::list_file  local:<TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
DbSql::list_file  local:<TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
DbSql::list_file  local:<TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
DbSql::list_file  local:<TESTBASE>/test/peer
CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4	<TESTBASE>/test/peer/new_file 
CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0	<TESTBASE>/test/peer/A

CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0	<TESTBASE>/test/peer/.Test

CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir	<TESTBASE>/test/peer

DEBUG daemon: LIST rc=0 'local' '<TESTBASE>/test/peer' '-' 
Daemon end_command <TESTBASE>/test/peer LIST 0 
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
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
File <TESTBASE>/test/peer/new_file 'N' all. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all is clean
Removing file <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
backup <TESTBASE>/test/peer/new_file 'N' all 0 
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
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all filename: <TESTBASE>/test/peer/new_file 'N' all i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.3 due  3 
Copying data from <TESTBASE>/test/peer/new_file 'N' all to backup file /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/new_file 'N' all'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/new_file 'N' all' '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/new_file 'N' all from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/new_file 'N' all, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/A
Running check for <TESTBASE>/test/peer/A ...
Checking for modified files <TESTBASE>/test/peer/A 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/A' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer/A da39a3ee5e6b4b0d3255bfef95601890afd80709
Inserted/updated <TESTBASE>/test/peer/A rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/A.
File <TESTBASE>/test/peer/A. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
daemon_check_dirty: <TESTBASE>/test/peer/A is just marked dirty
Removing file <TESTBASE>/test/peer/A
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/A
backup <TESTBASE>/test/peer/A 0 
backupdir stat: /tmp/csync2/export 0 
backupdir stat: /tmp/csync2/export/home 0 
Changing owner of /tmp/csync2/export/home to user <UID> and group <GID>, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 
backupdir stat: /tmp/csync2<TESTBASE> 0 
backupdir stat: /tmp/csync2<TESTBASE>/test 0 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer 0 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/A filename: <TESTBASE>/test/peer/A i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/A.3 due  3 
Copying data from <TESTBASE>/test/peer/A to backup file /tmp/csync2<TESTBASE>/test/peer/A 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/A'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/A' '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/A from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/A, param2: peer
daemon_check_dirty: <TESTBASE>/test/peer/.Test
Running check for <TESTBASE>/test/peer/.Test ...
Checking for modified files <TESTBASE>/test/peer/.Test 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.Test' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer/.Test da39a3ee5e6b4b0d3255bfef95601890afd80709
Inserted/updated <TESTBASE>/test/peer/.Test rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/.Test.
File <TESTBASE>/test/peer/.Test. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
daemon_check_dirty: <TESTBASE>/test/peer/.Test is just marked dirty
Removing file <TESTBASE>/test/peer/.Test
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/.Test
backup <TESTBASE>/test/peer/.Test 0 
backupdir stat: /tmp/csync2/export 0 
backupdir stat: /tmp/csync2/export/home 0 
Changing owner of /tmp/csync2/export/home to user <UID> and group <GID>, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 
backupdir stat: /tmp/csync2<TESTBASE> 0 
backupdir stat: /tmp/csync2<TESTBASE>/test 0 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer 0 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/.Test filename: <TESTBASE>/test/peer/.Test i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/.Test.3 due  3 
Copying data from <TESTBASE>/test/peer/.Test to backup file /tmp/csync2<TESTBASE>/test/peer/.Test 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/.Test'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/.Test' '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/.Test from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/.Test, param2: peer
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
