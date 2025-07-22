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
Mode: 64 Flags: 0 PID: 2656760
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
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
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53090896, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53090896, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
daemon_check_dirty: <TESTBASE>/test/peer/usr
Running check for <TESTBASE>/test/peer/usr ...
Checking for modified files <TESTBASE>/test/peer/usr 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
check_mod: No such file '<TESTBASE>/test/peer/usr' .
Checking for deleted files <TESTBASE>/test/peer/usr.
file <TESTBASE>/test/peer/usr encoded <TESTBASE>/test/peer/usr. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
mkdir <TESTBASE>/test/peer/usr rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/usr  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
daemon_check_dirty: <TESTBASE>/test/peer/usr/local
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
check_mod: No such file '<TESTBASE>/test/peer/usr/local' .
Checking for deleted files <TESTBASE>/test/peer/usr/local.
file <TESTBASE>/test/peer/usr/local encoded <TESTBASE>/test/peer/usr/local. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
mkdir <TESTBASE>/test/peer/usr/local rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr/local rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
check_mod: No such file '<TESTBASE>/test/peer/usr/local/sbin' .
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
file <TESTBASE>/test/peer/usr/local/sbin encoded <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
mkdir <TESTBASE>/test/peer/usr/local/sbin rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/' 62, 62.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local/sbin', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr' 58, cached path: '<TESTBASE>/test/peer/usr/' 62, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53090896, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53090896, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899550 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/usr/local/sbin' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
file <TESTBASE>/test/peer/usr/local/sbin encoded <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local/sbin', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899550, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899550, type = 1
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
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
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/usr/' 62, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
csync_daemon_sig: unused parameters: ftime 1736899551 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
daemon_check_dirty: <TESTBASE>/test/peer/usr/local
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/usr/local' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local.
file <TESTBASE>/test/peer/usr/local encoded <TESTBASE>/test/peer/usr/local. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/usr/' 62, 62.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
setown <TESTBASE>/test/peer/usr/local rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/usr/' 62, 62.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
Updated(mod) local:<TESTBASE>/test/peer/usr/local  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899550 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/' 62, 62.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr' 58, cached path: '<TESTBASE>/test/peer/usr/' 62, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53090896, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53090896, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
csync_daemon_sig: unused parameters: ftime 1736899551 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899553 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/' 62, 62.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/usr/local/sbin' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
file <TESTBASE>/test/peer/usr/local/sbin encoded <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local/sbin', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899553, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899553, type = 1
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
csync_daemon_sig: unused parameters: ftime 1736899553 size 4<2656760> CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
check_mod: No such file '<TESTBASE>/test/peer/usr/local/sbin/hej' .
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
file <TESTBASE>/test/peer/usr/local/sbin/hej encoded <TESTBASE>/test/peer/usr/local/sbin/hej. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin/hej'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local/sbin/hej' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Locking '<TESTBASE>/test/peer/usr/local/sbin/hej'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/usr/local/sbin/hej 1736899553
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/usr/local/sbin/hej')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/usr/local/sbin/hej to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/usr/local/sbin/hej')
Receiving delta_file from peer..
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (chunked)..
Got 10 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin/.hej.XXXXXX'
Redis reply: SET '<MTIME>' NX EX 600 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/usr/local/sbin/.hej.XXXXXX 1736899553
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/usr/local/sbin/hej'
Redis reply: SET '<MTIME>' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/usr/local/sbin/hej 1736899553
File '<TESTBASE>/test/peer/usr/local/sbin/hej' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/usr/local/sbin/hej'
Redis Reply: DEL '<TESTBASE>/test/peer/usr/local/sbin/hej' -> 1
settime <TESTBASE>/test/peer/usr/local/sbin/hej rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin/hej' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin/hej'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin/hej' 73, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin/hej
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local/sbin/hej', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53091098, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736899553, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device = 2049, inode = 53091098, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736899553, type = 2
Updated(patch) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/local/sbin/' 73, 68.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local/sbin', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899553, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899553, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr' 58, cached path: '<TESTBASE>/test/peer/usr/' 62, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899554 size 4096<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/usr/local/sbin' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
file <TESTBASE>/test/peer/usr/local/sbin encoded <TESTBASE>/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin' 68, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local/sbin', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899554, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899554, type = 1
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
csync_daemon_sig: unused parameters: ftime 0 size 0<2656760> check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin/hej' 73, cached path: '<TESTBASE>/test/peer/usr/local/' 68, 68.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/usr/local/sbin/hej')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/usr/local/sbin/hej to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin/hej' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej '
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/usr/local/sbin/hej' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
file <TESTBASE>/test/peer/usr/local/sbin/hej encoded <TESTBASE>/test/peer/usr/local/sbin/hej. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin/hej'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
check_pure: filename: '<TESTBASE>/test/peer/usr/local/sbin/hej' 73, cached path: '<TESTBASE>/test/peer/usr/local/sbin/' 73, 73.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/usr/local/sbin/hej' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
backup <TESTBASE>/test/peer/usr/local/sbin/hej 0 
backupdir stat: /tmp/csync2/export 0 16877
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
backupdir stat: /tmp/csync2/export/home 0 16877
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 16877
backupdir stat: /tmp/csync2<TESTBASE> 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/usr 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/usr/local 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin 0 16877
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej filename: <TESTBASE>/test/peer/usr/local/sbin/hej i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.2' to '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.1' to '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej' to '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.1'. rc = 0
Copying data from <TESTBASE>/test/peer/usr/local/sbin/hej to backup file /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/usr/local/sbin/hej'
Redis reply: SET '<MTIME>' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/usr/local/sbin/hej 1736899554
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local/sbin/hej' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin/hej'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/usr/local/sbin/hej'  AND  hostname = 'peer'
Updated(del) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local/sbin/hej
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/usr/local
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/usr/local' 62, cached path: '<TESTBASE>/test/peer/usr/local/sbin/' 73, 62.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/usr/local', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
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
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
csync_daemon_sig: unused parameters: ftime 0 size 0<2656760> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/usr/' 62, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer.
file <TESTBASE>/test/peer encoded <TESTBASE>/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
backup <TESTBASE>/test/peer 0 
Directory: <TESTBASE>/test/peer skipping
SQL: SELECT count(*) FROM file WHERE filename like '<TESTBASE>/test/peer/%'
3 files within directory '<TESTBASE>/test/peer': 
SQL Query finished.
Deleting recursive from clean directory (<TESTBASE>/test/peer): 3 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/usr/* ..
Removing <TESTBASE>/test/peer/usr/local/* ..
Removing <TESTBASE>/test/peer/usr/local/sbin/* ..
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/usr/local/sbin'
Redis reply: SET '<MTIME>' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/usr/local/sbin 1736899555
Removed directory <TESTBASE>/test/peer/usr/local/sbin 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/usr/local/sbin' OR filename LIKE '<TESTBASE>/test/peer/usr/local/sbin/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/usr/local'
Redis reply: SET '<MTIME>' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/usr/local 1736899555
Removed directory <TESTBASE>/test/peer/usr/local 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/usr/local' OR filename LIKE '<TESTBASE>/test/peer/usr/local/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/usr'
Redis reply: SET '<MTIME>' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/usr 1736899555
Removed directory <TESTBASE>/test/peer/usr 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/usr' OR filename LIKE '<TESTBASE>/test/peer/usr/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer'
Redis reply: SET '<MTIME>' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer -1
Removed directory <TESTBASE>/test/peer 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer' OR filename LIKE '<TESTBASE>/test/peer/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer'  AND  hostname = 'peer'
Updated(del) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

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
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
