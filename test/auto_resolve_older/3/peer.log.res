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
Mode: 64 Flags: 0 PID: 2654337
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
csync_daemon_sig: unused parameters: ftime 1623175200 size 4096<2654337> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
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
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '(null)' 0, 0.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087696, NULL, 16877, 4096, 1623175200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087696, digest = NULL, mode = 16877, size = 4096, mtime = 1623175200, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
csync_daemon_sig: unused parameters: ftime 1623175200 size 4096<2654337> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
check_mod: No such file '<TESTBASE>/test/peer/auto' .
Checking for deleted files <TESTBASE>/test/peer/auto.
file <TESTBASE>/test/peer/auto encoded <TESTBASE>/test/peer/auto. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/auto'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/auto  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/auto' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
mkdir <TESTBASE>/test/peer/auto rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/auto' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto', 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087699, NULL, 16877, 4096, 1623175200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087699, digest = NULL, mode = 16877, size = 4096, mtime = 1623175200, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/auto  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/older failed stat
csync_daemon_sig: unused parameters: ftime 1623175200 size 4096<2654337> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
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
file <TESTBASE>/test/peer/auto/older encoded <TESTBASE>/test/peer/auto/older. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/auto/older  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/auto/older' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/older failed stat
mkdir <TESTBASE>/test/peer/auto/older rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto/older rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto/older rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/auto/older' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto/older' 63, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto/older', 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087703, NULL, 16877, 4096, 1623175200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087703, digest = NULL, mode = 16877, size = 4096, mtime = 1623175200, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/auto/older  
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto' 58, cached path: '<TESTBASE>/test/peer/auto/' 63, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto', 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087699, NULL, 16877, 4096, 1623175200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087699, digest = NULL, mode = 16877, size = 4096, mtime = 1623175200, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087696, NULL, 16877, 4096, 1623175200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087696, digest = NULL, mode = 16877, size = 4096, mtime = 1623175200, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5603a6d40fc0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5603a6d40ca0
Closed db: 0x5603a6d40ca0
Closed db: 0x5603a6d40ca0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2654337 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2654337
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: 1623175200 1591639200 size: 14 11 
csync_daemon_sig: unused parameters: ftime 1623175200 size 14<2654337> check_pure: filename: '<TESTBASE>/test/peer/auto/older/update_both' 69, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=11

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/auto/older/update_both')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/auto/older/update_both to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto/older/update_both' '-' 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: 1623175200 1591639200 size: 14 11 
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/auto/older/update_both' 
New file: <TESTBASE>/test/peer/auto/older/update_both
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/peer/auto/older/update_both <TESTBASE>/test/peer/auto/older/update_both
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'peer'  AND device = 2049  AND inode = 53088265  AND filename != '<TESTBASE>/test/peer/auto/older/update_both' 
SQL Query finished.
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/auto/older/update_both' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11' AND device = 2049 AND inode = 53088265 OR filename = '<TESTBASE>/test/peer/auto/older/update_both') AND peername = 'local' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/auto/older/update_both', 0, 'peer', 'local', 'NEW', 'v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53088265, NULL, 2, 33188, 2, 1591639200)
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/auto/older/update_both' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11' AND device = 2049 AND inode = 53088265 OR filename = '<TESTBASE>/test/peer/auto/older/update_both') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/auto/older/update_both', 0, 'peer', 'other', 'NEW', 'v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53088265, NULL, 2, 33188, 2, 1591639200)
INSERT/UPDATE: <TESTBASE>/test/peer/auto/older/update_both 4aea1d30b023f66e867e3b001982f19f13d87449
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto/older/update_both', 'v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53088265, '4aea1d30b023f66e867e3b001982f19f13d87449', 33188, 11, 1591639200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11', device = 2049, inode = 53088265, digest = '4aea1d30b023f66e867e3b001982f19f13d87449', mode = 33188, size = 11, mtime = 1591639200, type = 2
Inserted/updated <TESTBASE>/test/peer/auto/older/update_both rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
file <TESTBASE>/test/peer/auto/older/update_both encoded <TESTBASE>/test/peer/auto/older/update_both. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
check_pure: filename: '<TESTBASE>/test/peer/auto/older/update_both' 69, cached path: '<TESTBASE>/test/peer/auto/older/' 69, 69.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both is just marked dirty
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/auto/older/update_both' and peername = 'local' and myname = 'peer' LIMIT 1
db_sql_is_dirty <TESTBASE>/test/peer/auto/older/update_both:local 2 33188
SQL Query finished.
daemon_check_dirty: peer operation  local <TESTBASE>/test/peer/auto/older/update_both NEW
File <TESTBASE>/test/peer/auto/older/update_both is dirty here: NEW 2
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/auto/older/update_both)
CONN local < File also marked dirty here! 
CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: 0 1591639200 size: 0 11 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like '%'
CONN local < OK (data_follows).

CONN local < 1591639200

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: 0 1591639200 size: 0 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like '%'
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto/older' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto/older' 63, cached path: '<TESTBASE>/test/peer/auto/older/' 69, 63.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto/older', 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087703, NULL, 16877, 4096, 1623175200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087703, digest = NULL, mode = 16877, size = 4096, mtime = 1623175200, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5603a6d4d590
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5603a6d4d270
Closed db: 0x5603a6d4d270
Closed db: 0x5603a6d4d270
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2654337 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2654337
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
csync_daemon_sig: unused parameters: ftime 1625767200 size 4096<2654337> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/auto/' 63, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer' 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/peer has changed: 
    v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 512
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53087696,                 digest='', mode=16877, mtime=1625853600, size=4096, type=1 where filename = '<TESTBASE>/test/peer'
Inserted/updated <TESTBASE>/test/peer rows matched: 0
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
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087696, NULL, 16877, 4096, 1625767200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087696, digest = NULL, mode = 16877, size = 4096, mtime = 1625767200, type = 1
Updated(mod) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
csync_daemon_sig: unused parameters: ftime 1625767200 size 4096<2654337> check_pure: filename: '<TESTBASE>/test/peer/auto' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/auto' 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/peer/auto has changed: 
    v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 512
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer/auto 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53087699,                 digest='', mode=16877, mtime=1625853600, size=4096, type=1 where filename = '<TESTBASE>/test/peer/auto'
Inserted/updated <TESTBASE>/test/peer/auto rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/auto.
file <TESTBASE>/test/peer/auto encoded <TESTBASE>/test/peer/auto. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/auto'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
check_pure: filename: '<TESTBASE>/test/peer/auto' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/auto  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/auto' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
setown <TESTBASE>/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/auto' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto', 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087699, NULL, 16877, 4096, 1625767200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087699, digest = NULL, mode = 16877, size = 4096, mtime = 1625767200, type = 1
Updated(mod) local:<TESTBASE>/test/peer/auto  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: 1625767200 1625853600 size: 4096 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like '%'
csync_daemon_sig: unused parameters: ftime 1625767200 size 4096<2654337> check_pure: filename: '<TESTBASE>/test/peer/auto/older' 63, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto/older' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: 1625767200 1625853600 size: 4096 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/older
Running check for <TESTBASE>/test/peer/auto/older ...
Checking for modified files <TESTBASE>/test/peer/auto/older 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/auto/older' 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir 
<TESTBASE>/test/peer/auto/older has changed: 
    v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1623175200:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 512
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer/auto/older 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1625853600:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53087703,                 digest='', mode=16877, mtime=1625853600, size=4096, type=1 where filename = '<TESTBASE>/test/peer/auto/older'
Inserted/updated <TESTBASE>/test/peer/auto/older rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/auto/older.
file <TESTBASE>/test/peer/auto/older encoded <TESTBASE>/test/peer/auto/older. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
check_pure: filename: '<TESTBASE>/test/peer/auto/older' 63, cached path: '<TESTBASE>/test/peer/auto/' 63, 63.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/auto/older  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/auto/older' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: 1625767200 1625853600 size: 4096 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like '%'
setown <TESTBASE>/test/peer/auto/older rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto/older rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/auto/older' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto/older' 63, cached path: '<TESTBASE>/test/peer/auto/' 63, 63.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto/older', 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087703, NULL, 16877, 4096, 1625767200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087703, digest = NULL, mode = 16877, size = 4096, mtime = 1625767200, type = 1
Updated(mod) local:<TESTBASE>/test/peer/auto/older  
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: 1625767200 1625853600 size: 14 13 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like '%'
csync_daemon_sig: unused parameters: ftime 1625767200 size 14<2654337> check_pure: filename: '<TESTBASE>/test/peer/auto/older/update_both' 69, cached path: '<TESTBASE>/test/peer/auto/' 63, 63.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/auto/older/update_both')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/auto/older/update_both to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto/older/update_both' '-' 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: 1625767200 1625853600 size: 14 13 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/auto/older/update_both' 
csync_cmpchecktxt A: v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13 
csync_cmpchecktxt B: v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11 
<TESTBASE>/test/peer/auto/older/update_both has changed: 
    v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13 
DB: v2:mtime=1591639200:mode=33188:user=dennis:group=schafroth:type=reg:size=11 NEW
ignore flags: 512
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
mark other operation: 'MOD' 'local:<TESTBASE>/test/peer/auto/older/update_both' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13' AND device = 2049 AND inode = 53088265 OR filename = '<TESTBASE>/test/peer/auto/older/update_both') AND peername = 'local' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/auto/older/update_both', 0, 'peer', 'local', 'NEW', 'v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13', 2049, 53088265, NULL, 130, 33188, 2, 1625853600)
mark other operation: 'MOD' 'other:<TESTBASE>/test/peer/auto/older/update_both' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13' AND device = 2049 AND inode = 53088265 OR filename = '<TESTBASE>/test/peer/auto/older/update_both') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/auto/older/update_both', 0, 'peer', 'other', 'NEW', 'v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13', 2049, 53088265, NULL, 130, 33188, 2, 1625853600)
INSERT/UPDATE: <TESTBASE>/test/peer/auto/older/update_both 4aea1d30b023f66e867e3b001982f19f13d87449
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1625853600:mode=33188:user=dennis:group=schafroth:type=reg:size=13', device=2049, inode=53088265,                 digest='4aea1d30b023f66e867e3b001982f19f13d87449', mode=33188, mtime=1625853600, size=13, type=2 where filename = '<TESTBASE>/test/peer/auto/older/update_both'
Inserted/updated <TESTBASE>/test/peer/auto/older/update_both rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
file <TESTBASE>/test/peer/auto/older/update_both encoded <TESTBASE>/test/peer/auto/older/update_both. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
check_pure: filename: '<TESTBASE>/test/peer/auto/older/update_both' 69, cached path: '<TESTBASE>/test/peer/auto/older/' 69, 69.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both is just marked dirty
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/auto/older/update_both' and peername = 'local' and myname = 'peer' LIMIT 1
db_sql_is_dirty <TESTBASE>/test/peer/auto/older/update_both:local 130 33188
SQL Query finished.
Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like '%'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older/update_both
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older/update_both time: 1625767200 1625853600 size: 14 13 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older/update_both won auto resolved. clear dirty
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like '%'
Locking '<TESTBASE>/test/peer/auto/older/update_both'
Redis reply: SET '<TESTBASE>/test/peer/auto/older/update_both' '1736899513' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/auto/older/update_both 1736899513
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
backup <TESTBASE>/test/peer/auto/older/update_both 0 
backupdir stat: /tmp/csync2/export 0 16877
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home 0 16877
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 16877
backupdir stat: /tmp/csync2<TESTBASE> 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto/older 0 16877
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both filename: <TESTBASE>/test/peer/auto/older/update_both i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.2' to '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.1' to '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both' to '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.1'. rc = 0
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

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/auto/older/update_both')
Receiving delta_file from peer..
CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
Receiving 20 bytes (chunked)..
Got 20 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older/.update_both.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/older/.update_both.XXXXXX' '1736899513' NX EX 600 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/auto/older/.update_both.XXXXXX 1736899513
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/auto/older/update_both'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/auto/older/update_both' '1736899513' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/auto/older/update_both 1736899513
File '<TESTBASE>/test/peer/auto/older/update_both' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/auto/older/update_both'
Redis Reply: DEL '<TESTBASE>/test/peer/auto/older/update_both' -> 1
settime <TESTBASE>/test/peer/auto/older/update_both rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/auto/older/update_both' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto/older/update_both' 69, cached path: '<TESTBASE>/test/peer/auto/older/' 69, 69.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older/update_both
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto/older/update_both', 'v2:mtime=1625767200:mode=33188:user=dennis:group=schafroth:type=reg:size=14', 2049, 53089248, 'f2dd09e8939d88e1b547eae060b20f4098412f1b', 33188, 14, 1625767200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1625767200:mode=33188:user=dennis:group=schafroth:type=reg:size=14', device = 2049, inode = 53089248, digest = 'f2dd09e8939d88e1b547eae060b20f4098412f1b', mode = 33188, size = 14, mtime = 1625767200, type = 2
Updated(patch) local:<TESTBASE>/test/peer/auto/older/update_both  
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older
daemon: Auto resolve method OLDER 3 for local:<TESTBASE>/test/peer/auto/older
daemon: Auto resolve local:<TESTBASE>/test/peer/auto/older time: 0 1736899513 size: 0 4096 
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/older won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/older won auto resolved. clear dirty
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like '%'
settime <TESTBASE>/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto/older' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto/older'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto/older' 63, cached path: '<TESTBASE>/test/peer/auto/older/' 69, 63.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/older
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto/older', 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087703, NULL, 16877, 4096, 1625767200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087703, digest = NULL, mode = 16877, size = 4096, mtime = 1625767200, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/auto' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/auto'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/auto' 58, cached path: '<TESTBASE>/test/peer/auto/' 63, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/auto', 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087699, NULL, 16877, 4096, 1625767200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087699, digest = NULL, mode = 16877, size = 4096, mtime = 1625767200, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53087696, NULL, 16877, 4096, 1625767200, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1625767200:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53087696, digest = NULL, mode = 16877, size = 4096, mtime = 1625767200, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5603a6d48170
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5603a6d4de40
Closed db: 0x5603a6d4de40
Closed db: 0x5603a6d4de40
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2654337 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2654337
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
csync_daemon_sig: unused parameters: ftime 0 size 0<2654337> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

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
Removing <TESTBASE>/test/peer/auto/* ..
Removing <TESTBASE>/test/peer/auto/older/* ..
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both
Running check for <TESTBASE>/test/peer/auto/older/update_both ...
Checking for modified files <TESTBASE>/test/peer/auto/older/update_both 
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/auto/older/update_both' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/auto/older/update_both.
file <TESTBASE>/test/peer/auto/older/update_both encoded <TESTBASE>/test/peer/auto/older/update_both. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
check_pure: filename: '<TESTBASE>/test/peer/auto/older/update_both' 69, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/auto/older/update_both  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/auto/older/update_both' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file <TESTBASE>/test/peer/auto/older/update_both
Locking '<TESTBASE>/test/peer/auto/older/update_both'
Redis reply: SET '<TESTBASE>/test/peer/auto/older/update_both' '1736899514' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/auto/older/update_both 1736899514
Match (+): <TESTBASE>/test/peer/auto/older on <TESTBASE>/test/peer/auto/older/update_both
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/auto/older/update_both
backup <TESTBASE>/test/peer/auto/older/update_both 0 
backupdir stat: /tmp/csync2/export 0 16877
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home 0 16877
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 16877
backupdir stat: /tmp/csync2<TESTBASE> 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/auto/older 0 16877
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both filename: <TESTBASE>/test/peer/auto/older/update_both i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.2' to '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.1' to '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both' to '/tmp/csync2<TESTBASE>/test/peer/auto/older/update_both.1'. rc = 0
Copying data from <TESTBASE>/test/peer/auto/older/update_both to backup file /tmp/csync2<TESTBASE>/test/peer/auto/older/update_both 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/auto/older/update_both'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/auto/older/update_both' '1736899514' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/auto/older/update_both 1736899514
Removing <TESTBASE>/test/peer/auto/older/update_both from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/auto/older/update_both'  AND  hostname = 'peer'
Deleting key '<TESTBASE>/test/peer/auto/older/update_both'
Redis Reply: DEL '<TESTBASE>/test/peer/auto/older/update_both' -> 1
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/auto/older'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/auto/older' '1736899514' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/auto/older 1736899514
Removed directory <TESTBASE>/test/peer/auto/older 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/auto/older' OR filename LIKE '<TESTBASE>/test/peer/auto/older/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/auto'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/auto' '1736899514' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/auto -1
Removed directory <TESTBASE>/test/peer/auto 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/auto' OR filename LIKE '<TESTBASE>/test/peer/auto/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer' '1736899514' NX EX 300 -> (null)
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
Redis closing: 0x5603a6d789a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5603a6d489a0
Closed db: 0x5603a6d489a0
Closed db: 0x5603a6d489a0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2654337 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2654337
