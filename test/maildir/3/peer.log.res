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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new
Running check for <TESTBASE>/test/peer/Maildir/new ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
check_mod: No such file '<TESTBASE>/test/peer/Maildir/new' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/new.
File <TESTBASE>/test/peer/Maildir/new. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/new'
Redis reply: SET 'CREATE,ISDIR:<TESTBASE>/test/peer/Maildir/new' '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer/Maildir/new rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MKDIR rc=1 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Daemon end_command <TESTBASE>/test/peer/Maildir/new MKDIR 1 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
Daemon end_command <TESTBASE>/test/peer/Maildir/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new
Running check for <TESTBASE>/test/peer/Maildir/new ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/new' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/new.
File <TESTBASE>/test/peer/Maildir/new. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
setown <TESTBASE>/test/peer/Maildir/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
Updated(mod) local:<TESTBASE>/test/peer/Maildir/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Daemon end_command <TESTBASE>/test/peer/Maildir/new MOD 1 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '-' 
CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Running check for <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
check_mod: No such file '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764.
File <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '<MTIME>' NX EX 1 -> OK
daemon CREATE <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 1 0
CONN local < OK 
CONN local > 'octet-stream 8'
Got octet-stream 8
Content length in buffer: 'octet-stream 8' size: 8 rc: 0 (octet-stream)
Receiving 8 bytes (octet-stream)..
Reading chunk 8 bytes of 8
Writing chunk 8 bytes of 8 to file
Got 8 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: CREATE rc=1 'local' '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Updated(create) local:<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Daemon end_command <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/new xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
Daemon end_command <TESTBASE>/test/peer/Maildir/new SETTIME 0 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
Daemon end_command <TESTBASE>/test/peer/Maildir/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new
Running check for <TESTBASE>/test/peer/Maildir/new ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/new' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/new.
File <TESTBASE>/test/peer/Maildir/new. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
setown <TESTBASE>/test/peer/Maildir/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: MOD rc=1 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
Updated(mod) local:<TESTBASE>/test/peer/Maildir/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Daemon end_command <TESTBASE>/test/peer/Maildir/new MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,'
Command: local: MV <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
DAEMON_MV <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 Locking MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 1
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<MTIME>' NX EX 1 -> OK
SQL MOVE: UPDATE file set filename = concat(?::text,substring(filename,?)) WHERE (filename = ? or filename like ?) 
DEBUG daemon: MV rc=0 'local' '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764, param2: peer
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Updated(mv) local:<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Daemon end_command <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 MV 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/Maildir/new xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: SETTIME rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
Daemon end_command <TESTBASE>/test/peer/Maildir/new SETTIME 0 
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

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2, %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S'
Command: local: MV <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
DAEMON_MV <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, Locking MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 1
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '<MTIME>' NX EX 1 -> OK
SQL MOVE: UPDATE file set filename = concat(?::text,substring(filename,?)) WHERE (filename = ? or filename like ?) 
DEBUG daemon: MV rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,, param2: peer
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Updated(mv) local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Daemon end_command <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, MV 0 
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

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST'
Command: local: MV <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
DAEMON_MV <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S Locking MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<MTIME>' NX EX 1 -> OK
SQL MOVE: UPDATE file set filename = concat(?::text,substring(filename,?)) WHERE (filename = ? or filename like ?) 
DEBUG daemon: MV rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S, param2: peer
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Updated(mv) local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Daemon end_command <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S MV 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN local < OK (not_found).

DEBUG daemon: SIG rc=2 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-' 
CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Reading chunk 32 bytes of 32 from file
Writing chunk 32 bytes of 32
Signature has been sent to peer successfully.
DEBUG daemon: SIG rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
Daemon end_command <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST '
Command: local: MKHARDLINK <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.
File <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. Hostname: peer 
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
HARDLINK: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
DEBUG daemon: MKHARDLINK rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Updated(mkhardlink) local:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S MKHARDLINK 0 
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

CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group'
Command: local: STAT <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=8

DEBUG daemon: STAT rc=2 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-' 
CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S '
Command: local: DEL <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S         
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.
File <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
backup <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/Maildir 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S filename: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3 due  3 
Copying data from <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S to backup file /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '<MTIME>' NX EX 1 -> OK
DEL local:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S rc: 0
DEBUG daemon: DEL rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S, param2: peer
Updated(del) local:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Daemon end_command <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S DEL 0 
CONN local < OK (cmd_finished).

CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group'
Command: local: STAT <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=8

DEBUG daemon: STAT rc=2 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST '
Command: local: DEL <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST         
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Running check for <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.
File <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST. Hostname: peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST is clean
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
backup <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir 0 
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir/cur -1 No such file or directory
mkdir /tmp/csync2<TESTBASE>/test/peer/Maildir/cur 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3 due  3 
Copying data from <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to backup file /tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<MTIME>' NX EX 1 -> OK
DEL local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST rc: 0
DEBUG daemon: DEL rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  filename = ? , param1: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST, param2: peer
Updated(del) local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Daemon end_command <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST DEL 0 
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
6 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 6 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/Maildir/* ..
Removing <TESTBASE>/test/peer/Maildir/tmp/* ..
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/tmp'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/tmp' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/Maildir/tmp 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/Maildir/tmp, param2: <TESTBASE>/test/peer/Maildir/tmp/%, param3: peer
Removing <TESTBASE>/test/peer/Maildir/new/* ..
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/new'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/new' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/Maildir/new 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/Maildir/new, param2: <TESTBASE>/test/peer/Maildir/new/%, param3: peer
Removing <TESTBASE>/test/peer/Maildir/cur/* ..
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/cur'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/cur' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/Maildir/cur 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/Maildir/cur, param2: <TESTBASE>/test/peer/Maildir/cur/%, param3: peer
Removing <TESTBASE>/test/peer/Maildir/.Trash/* ..
Removing <TESTBASE>/test/peer/Maildir/.Trash/cur/* ..
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash/cur'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash/cur' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/Maildir/.Trash/cur 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/Maildir/.Trash/cur, param2: <TESTBASE>/test/peer/Maildir/.Trash/cur/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir/.Trash' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/Maildir/.Trash 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/Maildir/.Trash, param2: <TESTBASE>/test/peer/Maildir/.Trash/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer/Maildir' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer/Maildir 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer/Maildir, param2: <TESTBASE>/test/peer/Maildir/%, param3: peer
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Redis reply: SET 'DELETE,ISDIR:<TESTBASE>/test/peer' '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer 0
remove_file SQL: DELETE FROM file WHERE hostname = ?  AND  (filename = ? OR filename LIKE ?) , param1: <TESTBASE>/test/peer, param2: <TESTBASE>/test/peer/%, param3: peer
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 6 1 
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
