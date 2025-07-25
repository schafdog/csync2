csync_hostinfo (nil)
standalone: 64 server_standalone > 0: 1
server standalone 64 server_standalone > 0: 1
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
Found my alias peer localhost 30861 
csync_config_destroy
csync_config_destroy end
Binding to 30861 IPv0 
Mode: 64 Flags: 0 PID: 2387800
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
GIT:           09e7f4b9db150a32e5a70be67ab3aa9902c0692d-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
DEBUG from (null) 3
DEBUG daemon: check update rc=0 '(null)' '' '-' 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
csync_daemon_sig: unused parameters: ftime 1736888507 size 4096<2387800> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
check_mod: No such file '<TESTBASE>/test/peer' .
Checking for deleted files <TESTBASE>/test/peer.
file <TESTBASE>/test/peer encoded <TESTBASE>/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
mkdir <TESTBASE>/test/peer rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '(null)' 0, 0.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087675, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087675, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
csync_daemon_sig: unused parameters: ftime 1736888507 size 4096<2387800> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
daemon_check_dirty: <TESTBASE>/test/peer/Maildir
Running check for <TESTBASE>/test/peer/Maildir ...
Checking for modified files <TESTBASE>/test/peer/Maildir 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
check_mod: No such file '<TESTBASE>/test/peer/Maildir' .
Checking for deleted files <TESTBASE>/test/peer/Maildir.
file <TESTBASE>/test/peer/Maildir encoded <TESTBASE>/test/peer/Maildir. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
mkdir <TESTBASE>/test/peer/Maildir rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087686, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087686, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736888507 size 4096<2387800> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_mod: No such file '<TESTBASE>/test/peer/Maildir/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
file <TESTBASE>/test/peer/Maildir/cur encoded <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
mkdir <TESTBASE>/test/peer/Maildir/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087687, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087687, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
csync_daemon_sig: unused parameters: ftime 1736888507 size 4096<2387800> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
check_mod: No such file '<TESTBASE>/test/peer/Maildir/tmp' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
file <TESTBASE>/test/peer/Maildir/tmp encoded <TESTBASE>/test/peer/Maildir/tmp. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/tmp' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
mkdir <TESTBASE>/test/peer/Maildir/tmp rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/tmp', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087688, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087688, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/tmp  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
csync_daemon_sig: unused parameters: ftime 1736888507 size 4096<2387800> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash
Running check for <TESTBASE>/test/peer/Maildir/.Trash ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash.
file <TESTBASE>/test/peer/Maildir/.Trash encoded <TESTBASE>/test/peer/Maildir/.Trash. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
mkdir <TESTBASE>/test/peer/Maildir/.Trash rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087690, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087690, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736888507 size 4096<2387800> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
file <TESTBASE>/test/peer/Maildir/.Trash/cur encoded <TESTBASE>/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
mkdir <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087691, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087691, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
csync_daemon_sig: unused parameters: ftime 1736888507 size 4<2387800> CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 1736888507'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp/123
Running check for <TESTBASE>/test/peer/Maildir/tmp/123 ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp/123 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
check_mod: No such file '<TESTBASE>/test/peer/Maildir/tmp/123' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp/123.
file <TESTBASE>/test/peer/Maildir/tmp/123 encoded <TESTBASE>/test/peer/Maildir/tmp/123. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp/123'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp/123  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/tmp/123' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
daemon CREATE <TESTBASE>/test/peer/Maildir/tmp/123
Locking '<TESTBASE>/test/peer/Maildir/tmp/123'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/tmp/123 1736888507
CONN local < OK 
CONN local > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
Receiving 0 bytes (chunked)..
settime <TESTBASE>/test/peer/Maildir/tmp/123 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp/123' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp/123'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp/123' 70, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp/123
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/tmp/123', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53087692, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 33188, 0, 1736888507, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', device = 2049, inode = 53087692, digest = 'da39a3ee5e6b4b0d3255bfef95601890afd80709', mode = 33188, size = 0, mtime = 1736888507, type = 2
Updated(create) local:<TESTBASE>/test/peer/Maildir/tmp/123  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/tmp/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/tmp', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087688, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087688, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087690, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087690, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087686, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087686, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087675, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087675, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: <PTR>
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: <PTR>
Closed db: <PTR>
Closed db: <PTR>
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2387800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2387800
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
GIT:           09e7f4b9db150a32e5a70be67ab3aa9902c0692d-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
DEBUG from (null) 3
DEBUG daemon: check update rc=0 '(null)' '' '-' 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736888508 size 4096<2387800> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
file <TESTBASE>/test/peer/Maildir/cur encoded <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087687, NULL, 16877, 4096, 1736888508, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087687, digest = NULL, mode = 16877, size = 4096, mtime = 1736888508, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
csync_daemon_sig: unused parameters: ftime 1736888508 size 4096<2387800> check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/tmp' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
file <TESTBASE>/test/peer/Maildir/tmp encoded <TESTBASE>/test/peer/Maildir/tmp. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/tmp' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/tmp', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087688, NULL, 16877, 4096, 1736888508, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087688, digest = NULL, mode = 16877, size = 4096, mtime = 1736888508, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/tmp  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736888509 size 4096<2387800> check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
file <TESTBASE>/test/peer/Maildir/.Trash/cur encoded <TESTBASE>/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 73.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 73.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087691, NULL, 16877, 4096, 1736888509, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087691, digest = NULL, mode = 16877, size = 4096, mtime = 1736888509, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp/123 %25test%25/Maildir/cur/123,Sab'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/123,Sab'
Redis reply: SET '<MTIME>' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/cur/123,Sab 1736888510
NOT IMPLEMENTED: csync_db_update_path (update DB recursive)
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp/123' '<TESTBASE>/test/peer/Maildir/cur/123,Sab' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp/123'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp/123'  AND  hostname = 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/123,Sab'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/123,Sab' 70, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/123,Sab
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur/123,Sab', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', 2049, 53087692, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 33188, 0, 1736888507, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0', device = 2049, inode = 53087692, digest = 'da39a3ee5e6b4b0d3255bfef95601890afd80709', mode = 33188, size = 0, mtime = 1736888507, type = 2
Updated(mv) local:<TESTBASE>/test/peer/Maildir/tmp/123 <TESTBASE>/test/peer/Maildir/cur/123,Sab 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp/123
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/123,Sab
csync_daemon_sig: unused parameters: ftime 1736888507 size 4<2387800> CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,Sab user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/123,Sab
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/123,Sab
csync_daemon_sig: unused parameters: ftime 1736888507 size 4<2387800> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/123,Sab' 70, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 70.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=0

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/Maildir/cur/123,Sab')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/Maildir/cur/123,Sab to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/123,Sab' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087691, NULL, 16877, 4096, 1736888509, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087691, digest = NULL, mode = 16877, size = 4096, mtime = 1736888509, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/tmp', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087688, NULL, 16877, 4096, 1736888508, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087688, digest = NULL, mode = 16877, size = 4096, mtime = 1736888508, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087687, NULL, 16877, 4096, 1736888508, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087687, digest = NULL, mode = 16877, size = 4096, mtime = 1736888508, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087690, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087690, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53087686, NULL, 16877, 4096, 1736888507, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53087686, digest = NULL, mode = 16877, size = 4096, mtime = 1736888507, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: <PTR>
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: <PTR>
Closed db: <PTR>
Closed db: <PTR>
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2387800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2387800
