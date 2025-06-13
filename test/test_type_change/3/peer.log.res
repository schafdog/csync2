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
Mode: 64 Flags: 0 PID: 2657800
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
csync_daemon_sig: unused parameters: ftime 1736899564 size 4096<2657800> CONN local < OK (not_found).

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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899564, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899564, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
csync_daemon_sig: unused parameters: ftime 1736899564 size 4096<2657800> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
check_mod: No such file '<TESTBASE>/test/peer/type_change' .
Checking for deleted files <TESTBASE>/test/peer/type_change.
file <TESTBASE>/test/peer/type_change encoded <TESTBASE>/test/peer/type_change. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
mkdir <TESTBASE>/test/peer/type_change rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/type_change rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/type_change rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/type_change' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346625, NULL, 16877, 4096, 1736899564, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346625, digest = NULL, mode = 16877, size = 4096, mtime = 1736899564, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/type_change  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
csync_daemon_sig: unused parameters: ftime 1736899564 size 4<2657800> CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
check_mod: No such file '<TESTBASE>/test/peer/type_change/new_file 'N' all' .
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
file <TESTBASE>/test/peer/type_change/new_file 'N' all encoded <TESTBASE>/test/peer/type_change/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Locking '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET '<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899564' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change/new_file 'N' all 1736899564
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/type_change/new_file 'N' all')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/type_change/new_file 'N' all to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/type_change/new_file 'N' all')
Receiving delta_file from peer..
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (chunked)..
Got 10 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/type_change/.new_file 'N' all.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/type_change/.new_file 'N' all.XXXXXX' '1736899564' NX EX 600 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change/.new_file 'N' all.XXXXXX 1736899564
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899564' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change/new_file 'N' all 1736899564
File '<TESTBASE>/test/peer/type_change/new_file 'N' all' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis Reply: DEL '<TESTBASE>/test/peer/type_change/new_file 'N' all' -> 1
settime <TESTBASE>/test/peer/type_change/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/type_change/new_file 'N' all' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change/new_file 'N' all' 70, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change/new_file 'N' all
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change/new_file ''N'' all', 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53346626, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899564, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53346626, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899564, type = 2
Updated(patch) local:<TESTBASE>/test/peer/type_change/new_file 'N' all  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/type_change' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/type_change/' 70, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346625, NULL, 16877, 4096, 1736899564, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346625, digest = NULL, mode = 16877, size = 4096, mtime = 1736899564, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899564, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899564:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899564, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x56107e876fc0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x56107e876ca0
Closed db: 0x56107e876ca0
Closed db: 0x56107e876ca0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2657800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2657800
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

CONN local > 'LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 '
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
peername: local file: <TESTBASE>/test/peer key: 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV recursive 1
db_sql_list_file peer <-> local <TESTBASE>/test/peer
SQL: SELECT checktxt, filename FROM file WHERE  (filename = '<TESTBASE>/test/peer' OR filename LIKE '<TESTBASE>/test/peer/%')  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
db_sql_list_file  local:<TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
db_sql_list_file  local:<TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
db_sql_list_file  local:<TESTBASE>/test/peer
SQL Query finished.
CONN local < v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4	<TESTBASE>/test/peer/type_change/new_file 
CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	<TESTBASE>/test/peer/type_change

CONN local < v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	<TESTBASE>/test/peer

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x56107e8aad80
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x56107e8aaae0
Closed db: 0x56107e8aaae0
Closed db: 0x56107e8aaae0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2657800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2657800
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
csync_daemon_sig: unused parameters: ftime 1736899567 size 4096<2657800> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
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
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899567:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899567, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899567:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899567, type = 1
Updated(mod) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 33188 - 9 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
csync_daemon_sig: unused parameters: ftime 1736899567 size 9<2657800> check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/type_change' '-' 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 33188 - 9 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/type_change' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/type_change.
file <TESTBASE>/test/peer/type_change encoded <TESTBASE>/test/peer/type_change. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Unlinking entry due to different type: 32768 16384 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
backup <TESTBASE>/test/peer/type_change 0 
Directory: <TESTBASE>/test/peer/type_change type change backup
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
Removing /tmp/csync2<TESTBASE>/test/peer/type_change.3/* ..
Removing file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all
Removed file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all 0
Locking 'DELETE,IS_DIR:/tmp/csync2<TESTBASE>/test/peer/type_change.3'
Redis reply: SET 'DELETE,IS_DIR:/tmp/csync2<TESTBASE>/test/peer/type_change.3' '1736899567' NX EX 300 -> OK
csync_redis_lock: OK /tmp/csync2<TESTBASE>/test/peer/type_change.3 1736899567
Removed directory /tmp/csync2<TESTBASE>/test/peer/type_change.3 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
SQL: SELECT count(*) FROM file WHERE filename like '<TESTBASE>/test/peer/type_change/%'
1 files within directory '<TESTBASE>/test/peer/type_change': 
SQL Query finished.
Deleting recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. Errors 0
Removing <TESTBASE>/test/peer/type_change/* ..
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
file <TESTBASE>/test/peer/type_change/new_file 'N' all encoded <TESTBASE>/test/peer/type_change/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
check_pure: filename: '<TESTBASE>/test/peer/type_change/new_file 'N' all' 70, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file <TESTBASE>/test/peer/type_change/new_file 'N' all
Locking '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET '<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899567' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change/new_file 'N' all 1736899567
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
backup <TESTBASE>/test/peer/type_change/new_file 'N' all 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/type_change -1 16877
mkdir /tmp/csync2<TESTBASE>/test/peer/type_change 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all filename: <TESTBASE>/test/peer/type_change/new_file 'N' all i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all.3 due  3 
Copying data from <TESTBASE>/test/peer/type_change/new_file 'N' all to backup file /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899567' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change/new_file 'N' all 1736899567
Removing <TESTBASE>/test/peer/type_change/new_file 'N' all from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  hostname = 'peer'
Deleting key '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis Reply: DEL '<TESTBASE>/test/peer/type_change/new_file 'N' all' -> 1
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/type_change'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/type_change' '1736899567' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change 1736899567
Removed directory <TESTBASE>/test/peer/type_change 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/type_change' OR filename LIKE '<TESTBASE>/test/peer/type_change/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 1 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Locking '<TESTBASE>/test/peer/type_change'
Redis reply: SET '<TESTBASE>/test/peer/type_change' '1736899567' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change 1736899567
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/type_change')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/type_change to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/type_change')
Receiving delta_file from peer..
CONN local > 'octet-stream 15'
Got octet-stream 15
Content length in buffer: 'octet-stream 15' size: 15 rc: 0 (octet-stream)
Receiving 15 bytes (chunked)..
Got 15 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.type_change.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.type_change.XXXXXX' '1736899567' NX EX 600 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/.type_change.XXXXXX 1736899567
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/type_change'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/type_change' '1736899567' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change 1736899567
File '<TESTBASE>/test/peer/type_change' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/type_change'
Redis Reply: DEL '<TESTBASE>/test/peer/type_change' -> 1
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/type_change' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/type_change/' 70, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change', 'v2:mtime=1736899567:mode=33188:user=dennis:group=schafroth:type=reg:size=9', 2049, 53346625, 'a5b9a3ea7244a9cd93041ca2cb2ff0e660b2b7aa', 33188, 9, 1736899567, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899567:mode=33188:user=dennis:group=schafroth:type=reg:size=9', device = 2049, inode = 53346625, digest = 'a5b9a3ea7244a9cd93041ca2cb2ff0e660b2b7aa', mode = 33188, size = 9, mtime = 1736899567, type = 2
Updated(patch) local:<TESTBASE>/test/peer/type_change  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
csync_daemon_sig: unused parameters: ftime 0 size 0<2657800> ERROR: Check for directory failed with non-directory <TESTBASE>/test/peer/type_change: 33188
CONN local < ERROR not found): 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899567:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899567, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899567:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899567, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x56107e8a9360
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x56107e8a9120
Closed db: 0x56107e8a9120
Closed db: 0x56107e8a9120
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2657800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2657800
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
csync_daemon_sig: unused parameters: ftime 1736899568 size 4096<2657800> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
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
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899568, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899568, type = 1
Updated(mod) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
csync_daemon_sig: unused parameters: ftime 1736899568 size 4096<2657800> check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=9

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/type_change')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/type_change to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/type_change' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/type_change' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/type_change.
file <TESTBASE>/test/peer/type_change encoded <TESTBASE>/test/peer/type_change. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Unlinking entry due to different type: 16384 32768 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
backup <TESTBASE>/test/peer/type_change 0 
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
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/type_change filename: <TESTBASE>/test/peer/type_change i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
Copying data from <TESTBASE>/test/peer/type_change to backup file /tmp/csync2<TESTBASE>/test/peer/type_change 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/type_change'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/type_change' '1736899568' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change 1736899568
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
mkdir <TESTBASE>/test/peer/type_change rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/type_change rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/type_change rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/type_change' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change', 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346625, NULL, 16877, 4096, 1736899568, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346625, digest = NULL, mode = 16877, size = 4096, mtime = 1736899568, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/type_change  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
csync_daemon_sig: unused parameters: ftime 1736899568 size 4<2657800> CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
check_mod: No such file '<TESTBASE>/test/peer/type_change/new_file 'N' all' .
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
file <TESTBASE>/test/peer/type_change/new_file 'N' all encoded <TESTBASE>/test/peer/type_change/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Locking '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET '<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899568' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change/new_file 'N' all 1736899568
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/type_change/new_file 'N' all')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/type_change/new_file 'N' all to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/type_change/new_file 'N' all')
Receiving delta_file from peer..
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (chunked)..
Got 10 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/type_change/.new_file 'N' all.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/type_change/.new_file 'N' all.XXXXXX' '1736899568' NX EX 600 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/type_change/.new_file 'N' all.XXXXXX -1
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899568' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/type_change/new_file 'N' all -1
File '<TESTBASE>/test/peer/type_change/new_file 'N' all' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis Reply: DEL '<TESTBASE>/test/peer/type_change/new_file 'N' all' -> 1
settime <TESTBASE>/test/peer/type_change/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/type_change/new_file 'N' all' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change/new_file 'N' all' 70, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change/new_file 'N' all
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change/new_file ''N'' all', 'v2:mtime=1736899568:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53346658, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899568, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899568:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53346658, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899568, type = 2
Updated(patch) local:<TESTBASE>/test/peer/type_change/new_file 'N' all  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/type_change' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/type_change/' 70, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change', 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346625, NULL, 16877, 4096, 1736899568, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346625, digest = NULL, mode = 16877, size = 4096, mtime = 1736899568, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899568, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899568:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899568, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x56107e8a5b30
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x56107e8a58e0
Closed db: 0x56107e8a58e0
Closed db: 0x56107e8a58e0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2657800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2657800
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
csync_daemon_sig: unused parameters: ftime 1736899571 size 4096<2657800> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
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
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899571:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899571, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899571:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899571, type = 1
Updated(mod) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change user/group 1234 1000 dennis schafroth 33188 - 11 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
csync_daemon_sig: unused parameters: ftime 1736899571 size 11<2657800> check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/type_change' '-' 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change - 1234 1000 dennis schafroth 33188 - 11 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/type_change' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/type_change.
file <TESTBASE>/test/peer/type_change encoded <TESTBASE>/test/peer/type_change. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Unlinking entry due to different type: 32768 16384 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
backup <TESTBASE>/test/peer/type_change 0 
Directory: <TESTBASE>/test/peer/type_change type change backup
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
Removing /tmp/csync2<TESTBASE>/test/peer/type_change.3/* ..
Removing file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all
Removed file /tmp/csync2<TESTBASE>/test/peer/type_change.3/new_file 'N' all 0
Locking 'DELETE,IS_DIR:/tmp/csync2<TESTBASE>/test/peer/type_change.3'
Redis reply: SET 'DELETE,IS_DIR:/tmp/csync2<TESTBASE>/test/peer/type_change.3' '1736899571' NX EX 300 -> (null)
csync_redis_lock: ERR /tmp/csync2<TESTBASE>/test/peer/type_change.3 -1
Removed directory /tmp/csync2<TESTBASE>/test/peer/type_change.3 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
SQL: SELECT count(*) FROM file WHERE filename like '<TESTBASE>/test/peer/type_change/%'
1 files within directory '<TESTBASE>/test/peer/type_change': 
SQL Query finished.
Deleting recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. Errors 0
Removing <TESTBASE>/test/peer/type_change/* ..
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all
Running check for <TESTBASE>/test/peer/type_change/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/type_change/new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/type_change/new_file 'N' all.
file <TESTBASE>/test/peer/type_change/new_file 'N' all encoded <TESTBASE>/test/peer/type_change/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
check_pure: filename: '<TESTBASE>/test/peer/type_change/new_file 'N' all' 70, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change/new_file 'N' all  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file <TESTBASE>/test/peer/type_change/new_file 'N' all
Locking '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET '<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899571' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change/new_file 'N' all 1736899571
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
backup <TESTBASE>/test/peer/type_change/new_file 'N' all 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/type_change -1 16877
mkdir /tmp/csync2<TESTBASE>/test/peer/type_change 
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all filename: <TESTBASE>/test/peer/type_change/new_file 'N' all i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all.3 due  3 
Copying data from <TESTBASE>/test/peer/type_change/new_file 'N' all to backup file /tmp/csync2<TESTBASE>/test/peer/type_change/new_file 'N' all 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/type_change/new_file 'N' all' '1736899571' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/type_change/new_file 'N' all -1
Removing <TESTBASE>/test/peer/type_change/new_file 'N' all from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change/new_file ''N'' all'  AND  hostname = 'peer'
Deleting key '<TESTBASE>/test/peer/type_change/new_file 'N' all'
Redis Reply: DEL '<TESTBASE>/test/peer/type_change/new_file 'N' all' -> 1
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/type_change'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/type_change' '1736899571' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/type_change -1
Removed directory <TESTBASE>/test/peer/type_change 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/type_change' OR filename LIKE '<TESTBASE>/test/peer/type_change/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:<TESTBASE>/test/peer/type_change. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer/type_change): 1 1 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
Locking '<TESTBASE>/test/peer/type_change'
Redis reply: SET '<TESTBASE>/test/peer/type_change' '1736899571' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change 1736899571
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/type_change')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/type_change to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/type_change')
Receiving delta_file from peer..
CONN local > 'octet-stream 17'
Got octet-stream 17
Content length in buffer: 'octet-stream 17' size: 17 rc: 0 (octet-stream)
Receiving 17 bytes (chunked)..
Got 17 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.type_change.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.type_change.XXXXXX' '1736899571' NX EX 600 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/.type_change.XXXXXX -1
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/type_change'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/type_change' '1736899571' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/type_change -1
File '<TESTBASE>/test/peer/type_change' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/type_change'
Redis Reply: DEL '<TESTBASE>/test/peer/type_change' -> 1
settime <TESTBASE>/test/peer/type_change rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/type_change' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/peer/type_change/' 70, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/type_change
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/type_change', 'v2:mtime=1736899571:mode=33188:user=dennis:group=schafroth:type=reg:size=11', 2049, 53346625, '2d4a00c876cabc31009dc8f6c84bfb84225d42b2', 33188, 11, 1736899571, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899571:mode=33188:user=dennis:group=schafroth:type=reg:size=11', device = 2049, inode = 53346625, digest = '2d4a00c876cabc31009dc8f6c84bfb84225d42b2', mode = 33188, size = 11, mtime = 1736899571, type = 2
Updated(patch) local:<TESTBASE>/test/peer/type_change  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/type_change/new_file%20%27N%27%20all user/group'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change/new_file 'N' all
csync_daemon_sig: unused parameters: ftime 0 size 0<2657800> ERROR: Check for directory failed with non-directory <TESTBASE>/test/peer/type_change: 33188
CONN local < ERROR not found): 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899571:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346624, NULL, 16877, 4096, 1736899571, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899571:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346624, digest = NULL, mode = 16877, size = 4096, mtime = 1736899571, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x56107e8aced0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x56107e8accc0
Closed db: 0x56107e8accc0
Closed db: 0x56107e8accc0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2657800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2657800
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
csync_daemon_sig: unused parameters: ftime 0 size 0<2657800> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
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
1 files within directory '<TESTBASE>/test/peer': 
SQL Query finished.
Deleting recursive from clean directory (<TESTBASE>/test/peer): 1 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
daemon_check_dirty: <TESTBASE>/test/peer/type_change
Running check for <TESTBASE>/test/peer/type_change ...
Checking for modified files <TESTBASE>/test/peer/type_change 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/type_change' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/type_change.
file <TESTBASE>/test/peer/type_change encoded <TESTBASE>/test/peer/type_change. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
check_pure: filename: '<TESTBASE>/test/peer/type_change' 58, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/type_change  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/type_change' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file <TESTBASE>/test/peer/type_change
Locking '<TESTBASE>/test/peer/type_change'
Redis reply: SET '<TESTBASE>/test/peer/type_change' '1736899571' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/type_change 1736899571
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/type_change
backup <TESTBASE>/test/peer/type_change 0 
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
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/type_change filename: <TESTBASE>/test/peer/type_change i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/type_change.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/type_change.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.2' to '/tmp/csync2<TESTBASE>/test/peer/type_change.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change.1' to '/tmp/csync2<TESTBASE>/test/peer/type_change.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/type_change' to '/tmp/csync2<TESTBASE>/test/peer/type_change.1'. rc = 0
Copying data from <TESTBASE>/test/peer/type_change to backup file /tmp/csync2<TESTBASE>/test/peer/type_change 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/type_change'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/type_change' '1736899571' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer/type_change -1
Removing <TESTBASE>/test/peer/type_change from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/type_change'  AND  hostname = 'peer'
Deleting key '<TESTBASE>/test/peer/type_change'
Redis Reply: DEL '<TESTBASE>/test/peer/type_change' -> 1
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer' '1736899571' NX EX 300 -> (null)
csync_redis_lock: ERR <TESTBASE>/test/peer -1
Removed directory <TESTBASE>/test/peer 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer' OR filename LIKE '<TESTBASE>/test/peer/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 1 1 
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
Redis closing: 0x56107e8b71a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x56107e8c5900
Closed db: 0x56107e8c5900
Closed db: 0x56107e8c5900
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2657800 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2657800
