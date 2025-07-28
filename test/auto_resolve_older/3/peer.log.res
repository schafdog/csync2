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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/auto' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
check_mod: No such file '<TESTBASE>/test/peer/auto' .
Checking for deleted files <TESTBASE>/test/peer/auto.
File <TESTBASE>/test/peer/auto. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/auto is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/auto'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/auto' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/auto rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/auto' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
Updated(mkdir) local:<TESTBASE>/test/peer/auto  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Daemon end_command <TESTBASE>/test/peer/auto MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/older user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/older failed stat
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/auto/older' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/auto/older - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/older failed stat
daemon_check_dirty: <TESTBASE>/test/peer/auto/older
Running check for <TESTBASE>/test/peer/auto/older ...
Checking for modified files <TESTBASE>/test/peer/auto/older 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
check_mod: No such file '<TESTBASE>/test/peer/auto/older' .
Checking for deleted files <TESTBASE>/test/peer/auto/older.
File <TESTBASE>/test/peer/auto/older. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/auto/older is clean
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/older failed stat
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/auto/older'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/auto/older' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/auto/older rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto/older rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/auto/older rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/auto/older' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
Updated(mkdir) local:<TESTBASE>/test/peer/auto/older  
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Daemon end_command <TESTBASE>/test/peer/auto/older MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/auto' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
Daemon end_command <TESTBASE>/test/peer/auto SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/older/update_both user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: <NUM> <MTIME> size: 14 11 
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=11

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/auto/older/update_both')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/auto/older/update_both to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/auto/older/update_both' '-' 
Daemon end_command <TESTBASE>/test/peer/auto/older/update_both SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/auto/older/update_both - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: <NUM> <MTIME> size: 14 11 
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older/update_both' -> NULL
New file: <TESTBASE>/test/peer/auto/older/update_both
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/peer/auto/older/update_both <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/auto/older/update_both' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/auto/older/update_both' '-'.
INSERT/UPDATE: <TESTBASE>/test/peer/auto/older/update_both 4aea1d30b023f66e867e3b001982f19f13d87449
Inserted/updated <TESTBASE>/test/peer/auto/older/update_both rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
File <TESTBASE>/test/peer/auto/older/update_both. Hostname: peer 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both is just marked dirty
DbSql::is_dirty <TESTBASE>/test/peer/auto/older/update_both:local 2 33188
daemon_check_dirty: peer operation  local <TESTBASE>/test/peer/auto/older/update_both NEW
File <TESTBASE>/test/peer/auto/older/update_both is dirty here: NEW 2
File local:<TESTBASE>/test/peer/auto/older/update_both is dirty here. Continuing.
Daemon end_command <TESTBASE>/test/peer/auto/older/update_both PATCH 3 File is also marked dirty here!
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/auto/older/update_both)
CONN local < File also marked dirty here! 
CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both'
Command: local: GETTM <TESTBASE>/test/peer/auto/older/update_both         
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: <NUM> <MTIME> size: 0 11 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
CONN local < OK (data_follows).

CONN local < 1591639200

DEBUG daemon: GETTM rc=2 'local' '<TESTBASE>/test/peer/auto/older/update_both' '-' 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto/older xxxxxxxx        
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: <NUM> <MTIME> size: 0 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/auto/older' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
Daemon end_command <TESTBASE>/test/peer/auto/older SETTIME 0 
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

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
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
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mod) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/auto' '-' 
Daemon end_command <TESTBASE>/test/peer/auto SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/peer/auto has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 512
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer/auto 
Inserted/updated <TESTBASE>/test/peer/auto rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/auto.
File <TESTBASE>/test/peer/auto. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
daemon_check_dirty: <TESTBASE>/test/peer/auto is just marked dirty
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
setown <TESTBASE>/test/peer/auto rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/auto' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
Updated(mod) local:<TESTBASE>/test/peer/auto  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Daemon end_command <TESTBASE>/test/peer/auto MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/older user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: <NUM> <MTIME> size: 4096 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/auto/older' '-' 
Daemon end_command <TESTBASE>/test/peer/auto/older SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/auto/older - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: <NUM> <MTIME> size: 4096 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/older
Running check for <TESTBASE>/test/peer/auto/older ...
Checking for modified files <TESTBASE>/test/peer/auto/older 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/peer/auto/older has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 512
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer/auto/older 
Inserted/updated <TESTBASE>/test/peer/auto/older rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/auto/older.
File <TESTBASE>/test/peer/auto/older. Hostname: peer 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon_check_dirty: <TESTBASE>/test/peer/auto/older is just marked dirty
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: <NUM> <MTIME> size: 4096 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
setown <TESTBASE>/test/peer/auto/older rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/auto/older rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/auto/older' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
Updated(mod) local:<TESTBASE>/test/peer/auto/older  
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Daemon end_command <TESTBASE>/test/peer/auto/older MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/older/update_both user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: <NUM> <MTIME> size: 14 13 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=13

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/auto/older/update_both')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/auto/older/update_both to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/auto/older/update_both' '-' 
Daemon end_command <TESTBASE>/test/peer/auto/older/update_both SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/auto/older/update_both - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: <NUM> <MTIME> size: 14 13 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older/update_both' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=13 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11 
<TESTBASE>/test/peer/auto/older/update_both has changed: 
    v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=13 
DB: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11 NEW
ignore flags: 512
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
mark other operation: 'MOD' 'local:<TESTBASE>/test/peer/auto/older/update_both' '-'.
mark other operation: 'MOD' 'other:<TESTBASE>/test/peer/auto/older/update_both' '-'.
INSERT/UPDATE: <TESTBASE>/test/peer/auto/older/update_both 4aea1d30b023f66e867e3b001982f19f13d87449
Inserted/updated <TESTBASE>/test/peer/auto/older/update_both rows matched: 1
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
File <TESTBASE>/test/peer/auto/older/update_both. Hostname: peer 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both is just marked dirty
DbSql::is_dirty <TESTBASE>/test/peer/auto/older/update_both:local 130 33188
Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve.
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: <NUM> <MTIME> size: 14 13 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
backup <TESTBASE>/test/peer/auto/older/update_both 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/auto 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto/older -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/auto/older 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both filename: <TESTBASE>/test/peer/auto/older/update_both i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3 due  3 
Copying data from <TESTBASE>/test/peer/auto/older/update_both to backup file /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both 
csync_backup loop end
csync_backup end
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/auto/older/update_both')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/auto/older/update_both to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/auto/older/update_both')
Receiving delta_file from peer..
CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
Receiving 20 bytes (octet-stream)..
Reading chunk 20 bytes of 20
Writing chunk 20 bytes of 20 to file
Got 20 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older/.update_both.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older/.update_both.XXXXXX' '<MTIME>' NX EX 1 -> OK
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/auto/older/update_both'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/auto/older/update_both' '<MTIME>' NX EX 1 -> OK
File '<TESTBASE>/test/peer/auto/older/update_both' has been patched successfully.
settime <TESTBASE>/test/peer/auto/older/update_both rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: PATCH rc=1 'local' '<TESTBASE>/test/peer/auto/older/update_both' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older/update_both
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older/update_both
Updated(patch) local:<TESTBASE>/test/peer/auto/older/update_both  
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Daemon end_command <TESTBASE>/test/peer/auto/older/update_both PATCH 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto/older xxxxxxxx        
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: <NUM> <MTIME> size: 0 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/auto/older' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
Daemon end_command <TESTBASE>/test/peer/auto/older SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/auto' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
Daemon end_command <TESTBASE>/test/peer/auto SETTIME 0 
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
Removing <TESTBASE>/test/peer/auto/* ..
Removing <TESTBASE>/test/peer/auto/older/* ..
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older/update_both' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
File <TESTBASE>/test/peer/auto/older/update_both. Hostname: peer 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both is clean
Removing file <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
backup <TESTBASE>/test/peer/auto/older/update_both 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto 0 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto/older 0 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both filename: <TESTBASE>/test/peer/auto/older/update_both i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3 due  3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both' to '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.1'. rc = 0
Copying data from <TESTBASE>/test/peer/auto/older/update_both to backup file /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/auto/older/update_both'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/auto/older/update_both' '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/auto/older/update_both from file db.
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/auto/older/update_both, param2: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/auto/older'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/auto/older' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/auto/older 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/auto/older, param2: <TESTBASE>/test/peer/auto/older/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/auto'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/auto' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/auto 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/auto, param2: <TESTBASE>/test/peer/auto/%, param3: peer
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
