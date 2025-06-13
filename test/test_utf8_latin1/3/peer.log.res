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
Mode: 64 Flags: 0 PID: 2658706
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
csync_daemon_sig: unused parameters: ftime 1736899579 size 4096<2658706> CONN local < OK (not_found).

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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899579:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346949, NULL, 16877, 4096, 1736899579, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899579:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346949, digest = NULL, mode = 16877, size = 4096, mtime = 1736899579, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
csync_daemon_sig: unused parameters: ftime 1736899579 size 4<2658706> CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
daemon_check_dirty: <TESTBASE>/test/peer/ÆØÅ Café.utf8
Running check for <TESTBASE>/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files <TESTBASE>/test/peer/ÆØÅ Café.utf8 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
check_mod: No such file '<TESTBASE>/test/peer/ÆØÅ Café.utf8' .
Checking for deleted files <TESTBASE>/test/peer/ÆØÅ Café.utf8.
file <TESTBASE>/test/peer/ÆØÅ Café.utf8 encoded <TESTBASE>/test/peer/ÆØÅ Café.utf8. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/ÆØÅ Café.utf8  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Locking '<TESTBASE>/test/peer/ÆØÅ Café.utf8'
Redis reply: SET '<TESTBASE>/test/peer/ÆØÅ Café.utf8' '1736899579' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/ÆØÅ Café.utf8 1736899579
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/ÆØÅ Café.utf8')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/ÆØÅ Café.utf8 to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/ÆØÅ Café.utf8')
Receiving delta_file from peer..
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (chunked)..
Got 10 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.ÆØÅ Café.utf8.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.ÆØÅ Café.utf8.XXXXXX' '1736899579' NX EX 600 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/.ÆØÅ Café.utf8.XXXXXX 1736899579
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/ÆØÅ Café.utf8'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/ÆØÅ Café.utf8' '1736899579' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/ÆØÅ Café.utf8 1736899579
File '<TESTBASE>/test/peer/ÆØÅ Café.utf8' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/ÆØÅ Café.utf8'
Redis Reply: DEL '<TESTBASE>/test/peer/ÆØÅ Café.utf8' -> 1
settime <TESTBASE>/test/peer/ÆØÅ Café.utf8 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/ÆØÅ Café.utf8' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/ÆØÅ Café.utf8' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/ÆØÅ Café.utf8
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/ÆØÅ Café.utf8', 'v2:mtime=1736899579:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53346950, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899579, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899579:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53346950, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899579, type = 2
Updated(patch) local:<TESTBASE>/test/peer/ÆØÅ Café.utf8  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736899579:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53346949, NULL, 16877, 4096, 1736899579, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899579:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53346949, digest = NULL, mode = 16877, size = 4096, mtime = 1736899579, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5621f7e0ffc0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5621f7e0fca0
Closed db: 0x5621f7e0fca0
Closed db: 0x5621f7e0fca0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2658706 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2658706
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 user/group'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
csync_daemon_sig: unused parameters: ftime 0 size 0<2658706> check_pure: filename: '<TESTBASE>/test/peer/ÆØÅ Café.utf8' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/ÆØÅ Café.utf8')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/ÆØÅ Café.utf8 to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/ÆØÅ Café.utf8' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 '
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
daemon_check_dirty: <TESTBASE>/test/peer/ÆØÅ Café.utf8
Running check for <TESTBASE>/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files <TESTBASE>/test/peer/ÆØÅ Café.utf8 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/ÆØÅ Café.utf8.
file <TESTBASE>/test/peer/ÆØÅ Café.utf8 encoded <TESTBASE>/test/peer/ÆØÅ Café.utf8. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
check_pure: filename: '<TESTBASE>/test/peer/ÆØÅ Café.utf8' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/ÆØÅ Café.utf8  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
backup <TESTBASE>/test/peer/ÆØÅ Café.utf8 0 
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
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8 filename: <TESTBASE>/test/peer/ÆØÅ Café.utf8 i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8.2' to '/tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8.1' to '/tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8' to '/tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8.1'. rc = 0
Copying data from <TESTBASE>/test/peer/ÆØÅ Café.utf8 to backup file /tmp/csync2<TESTBASE>/test/peer/ÆØÅ Café.utf8 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/ÆØÅ Café.utf8'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/ÆØÅ Café.utf8' '1736899580' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/ÆØÅ Café.utf8 1736899580
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/ÆØÅ Café.utf8' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/ÆØÅ Café.utf8'  AND  hostname = 'peer'
Updated(del) local:<TESTBASE>/test/peer/ÆØÅ Café.utf8  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/ÆØÅ Café.utf8
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5621f7e41d70
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5621f7e41a50
Closed db: 0x5621f7e41a50
Closed db: 0x5621f7e41a50
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2658706 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2658706
