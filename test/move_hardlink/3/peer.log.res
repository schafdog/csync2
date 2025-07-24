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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
daemon_check_dirty: <TESTBASE>/test/peer/Maildir
Running check for <TESTBASE>/test/peer/Maildir ...
Checking for modified files <TESTBASE>/test/peer/Maildir 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
check_mod: No such file '<TESTBASE>/test/peer/Maildir' .
Checking for deleted files <TESTBASE>/test/peer/Maildir.
File <TESTBASE>/test/peer/Maildir. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/Maildir rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/Maildir' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Daemon end_command <TESTBASE>/test/peer/Maildir MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash
Running check for <TESTBASE>/test/peer/Maildir/.Trash ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash.
File <TESTBASE>/test/peer/Maildir/.Trash. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/Maildir/.Trash rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
File <TESTBASE>/test/peer/Maildir/.Trash/cur. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash/cur'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash/cur' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_mod: No such file '<TESTBASE>/test/peer/Maildir/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
File <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/cur'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/cur' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/Maildir/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Daemon end_command <TESTBASE>/test/peer/Maildir/cur MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
check_mod: No such file '<TESTBASE>/test/peer/Maildir/tmp' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
File <TESTBASE>/test/peer/Maildir/tmp. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/tmp'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/tmp' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/Maildir/tmp rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/tmp  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp/123 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/tmp/123' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/Maildir/tmp/123 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp/123
Running check for <TESTBASE>/test/peer/Maildir/tmp/123 ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp/123 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
check_mod: No such file '<TESTBASE>/test/peer/Maildir/tmp/123' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp/123.
File <TESTBASE>/test/peer/Maildir/tmp/123. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp/123 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/tmp/123'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/tmp/123' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/Maildir/tmp/123 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
Receiving 4 bytes (octet-stream)..
Reading chunk 4 bytes of 4
Writing chunk 4 bytes of 4 to file
Got 4 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/Maildir/tmp/123 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp/123' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp/123
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp/123
Updated(create) local:<TESTBASE>/test/peer/Maildir/tmp/123  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp/123 CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/tmp xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
Daemon end_command <TESTBASE>/test/peer/Maildir SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/.Trash/cur' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
File <TESTBASE>/test/peer/Maildir/.Trash/cur. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
Updated(mod) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
Daemon end_command <TESTBASE>/test/peer/Maildir/cur SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/cur' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
File <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Daemon end_command <TESTBASE>/test/peer/Maildir/cur MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/tmp' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
File <TESTBASE>/test/peer/Maildir/tmp. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
Updated(mod) local:<TESTBASE>/test/peer/Maildir/tmp  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 %25test%25/Maildir/cur/123,Sab'
Command: local: MV <TESTBASE>/test/peer/Maildir/tmp/123 <TESTBASE>/test/peer/Maildir/cur/123,Sab        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
DAEMON_MV <TESTBASE>/test/peer/Maildir/tmp/123 Locking MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/123,Sab 1
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/123,Sab'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/123,Sab' '<MTIME>' NX EX 1 -> OK
SQL MOVE: UPDATE file set filename = concat(?::text,substring(filename,?)) WHERE (filename = ? or filename like ?) 
DEBUG daemon: MV rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp/123' '<TESTBASE>/test/peer/Maildir/cur/123,Sab' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/Maildir/tmp/123, param2: peer
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/123,Sab
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/123,Sab
Updated(mv) local:<TESTBASE>/test/peer/Maildir/tmp/123 <TESTBASE>/test/peer/Maildir/cur/123,Sab 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp/123 MV 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/123,Sab
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/Maildir/cur/123,Sab')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/Maildir/cur/123,Sab to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/123,Sab' '-' 
Daemon end_command <TESTBASE>/test/peer/Maildir/cur/123,Sab SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,Sab %25test%25/Maildir/cur/123,Sab '
Command: local: MKHARDLINK <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/peer/Maildir/cur/123,Sab        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab.
File <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
HARDLINK: <TESTBASE>/test/peer/Maildir/cur/123,Sab -> <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab 
DEBUG daemon: MKHARDLINK rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab' '<TESTBASE>/test/peer/Maildir/cur/123,Sab' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/123,Sab
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/123,Sab
Updated(mkhardlink) local:<TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab <TESTBASE>/test/peer/Maildir/cur/123,Sab 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash/cur xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/tmp xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
Daemon end_command <TESTBASE>/test/peer/Maildir/tmp SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/cur xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
Daemon end_command <TESTBASE>/test/peer/Maildir/cur SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
Daemon end_command <TESTBASE>/test/peer/Maildir SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/.Trash xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

DEBUG daemon: BYE rc=5 'local' '' '-' 
goto nofork.
Redis closed.
csync_config_destroy
csync_config_destroy end
