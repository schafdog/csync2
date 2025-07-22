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
Mode: 64 Flags: 0 PID: 2656399
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
csync_daemon_sig: unused parameters: ftime 1736899543 size 4096<2656399> CONN local < OK (not_found).

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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53089430, NULL, 16877, 4096, 1736899543, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53089430, digest = NULL, mode = 16877, size = 4096, mtime = 1736899543, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer  
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
Connection closed. Pid 2656399 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656399
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
csync_daemon_sig: unused parameters: ftime 1736899544 size 4096<2656399> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
csync_daemon_sig: unused parameters: ftime 1736899544 size 4<2656399> check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/different')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/different to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/different' '-' 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
daemon_check_dirty: <TESTBASE>/test/peer/different
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/different' 
New file: <TESTBASE>/test/peer/different
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/peer/different <TESTBASE>/test/peer/different
SQL:  SELECT filename, checktxt, digest FROM file WHERE  hostname = 'peer'  AND device = 2049  AND inode = 53089441  AND filename != '<TESTBASE>/test/peer/different' 
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/different' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/peer/different') AND peername = 'local' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/different'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/different', 0, 'peer', 'local', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53089441, NULL, 2, 33188, 2, 1736899544)
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/different' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/peer/different') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/different'  AND  myname = 'peer' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/different', 0, 'peer', 'other', 'NEW', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53089441, NULL, 2, 33188, 2, 1736899544)
INSERT/UPDATE: <TESTBASE>/test/peer/different f4fc6898c884181d07d56fac3a664a0ffc51ef88
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/different', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53089441, 'f4fc6898c884181d07d56fac3a664a0ffc51ef88', 33188, 4, 1736899544, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device = 2049, inode = 53089441, digest = 'f4fc6898c884181d07d56fac3a664a0ffc51ef88', mode = 33188, size = 4, mtime = 1736899544, type = 2
Inserted/updated <TESTBASE>/test/peer/different rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/different.
file <TESTBASE>/test/peer/different encoded <TESTBASE>/test/peer/different. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/different'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/different is just marked dirty
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/different' and peername = 'local' and myname = 'peer' LIMIT 1
db_sql_is_dirty <TESTBASE>/test/peer/different:local 2 33188
SQL Query finished.
daemon_check_dirty: peer operation  local <TESTBASE>/test/peer/different NEW
File <TESTBASE>/test/peer/different is dirty here: NEW 2
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/different)
CONN local < File also marked dirty here! 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53089430, NULL, 16877, 4096, 1736899544, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53089430, digest = NULL, mode = 16877, size = 4096, mtime = 1736899544, type = 1
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
Connection closed. Pid 2656399 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656399
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
csync_daemon_sig: unused parameters: ftime 1736899544 size 4<2656399> check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/different')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/different to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/different' '-' 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
daemon_check_dirty: <TESTBASE>/test/peer/different
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/different' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/different.
file <TESTBASE>/test/peer/different encoded <TESTBASE>/test/peer/different. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/different'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/different  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/different' and peername = 'local' and myname = 'peer' LIMIT 1
db_sql_is_dirty <TESTBASE>/test/peer/different:local 2 33188
SQL Query finished.
daemon_check_dirty: peer operation  local <TESTBASE>/test/peer/different NEW
File <TESTBASE>/test/peer/different is dirty here: NEW 2
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/different)
CONN local < File also marked dirty here! 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53089430, NULL, 16877, 4096, 1736899544, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53089430, digest = NULL, mode = 16877, size = 4096, mtime = 1736899544, type = 1
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
Connection closed. Pid 2656399 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656399
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

CONN local > 'FLUSH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
daemon_check_dirty: <TESTBASE>/test/peer/different
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/different' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/different.
file <TESTBASE>/test/peer/different encoded <TESTBASE>/test/peer/different. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/different'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/different  is clean
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/different'  AND  myname = 'peer' AND peername like '%'
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/different' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
csync_daemon_sig: unused parameters: ftime 1736899544 size 4<2656399> check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/different')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/different to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/different' '-' 
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
daemon_check_dirty: <TESTBASE>/test/peer/different
Running check for <TESTBASE>/test/peer/different ...
Checking for modified files <TESTBASE>/test/peer/different 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/different' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/different.
file <TESTBASE>/test/peer/different encoded <TESTBASE>/test/peer/different. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/different'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/different  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/different' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
Locking '<TESTBASE>/test/peer/different'
Redis reply: SET '<MTIME>' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/different 1736899545
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
backup <TESTBASE>/test/peer/different 0 
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
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/different filename: <TESTBASE>/test/peer/different i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/different.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/different.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/different.2' to '/tmp/csync2<TESTBASE>/test/peer/different.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/different.1' to '/tmp/csync2<TESTBASE>/test/peer/different.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/different' to '/tmp/csync2<TESTBASE>/test/peer/different.1'. rc = 0
Copying data from <TESTBASE>/test/peer/different to backup file /tmp/csync2<TESTBASE>/test/peer/different 
csync_backup loop end
csync_backup end
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/different')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/different to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('<TESTBASE>/test/peer/different')
Receiving delta_file from peer..
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (chunked)..
Got 10 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/.different.XXXXXX'
Redis reply: SET '<MTIME>' NX EX 600 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/.different.XXXXXX 1736899545
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:<TESTBASE>/test/peer/different'
Redis reply: SET '<MTIME>' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/different 1736899545
File '<TESTBASE>/test/peer/different' has been patched successfully.
Deleting key '<TESTBASE>/test/peer/different'
Redis Reply: DEL '<TESTBASE>/test/peer/different' -> 1
settime <TESTBASE>/test/peer/different rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/different' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/different'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/different' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/different
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/different', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 53090166, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899544, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device = 2049, inode = 53090166, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899544, type = 2
Updated(patch) local:<TESTBASE>/test/peer/different  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/different
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53089430, NULL, 16877, 4096, 1736899544, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53089430, digest = NULL, mode = 16877, size = 4096, mtime = 1736899544, type = 1
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
Connection closed. Pid 2656399 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656399
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
csync_daemon_sig: unused parameters: ftime 1736899546 size 4096<2656399> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer' 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/peer has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 512
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: <TESTBASE>/test/peer 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device=2049, inode=53089430,                 digest='', mode=16877, mtime=1736899547, size=4096, type=1 where filename = '<TESTBASE>/test/peer'
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
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53089430, NULL, 16877, 4096, 1736899546, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53089430, digest = NULL, mode = 16877, size = 4096, mtime = 1736899546, type = 1
Updated(mod) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
csync_daemon_sig: unused parameters: ftime 1736899546 size 4096<2656399> check_pure: filename: '<TESTBASE>/test/peer/tmp' 58, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/tmp' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
daemon_check_dirty: <TESTBASE>/test/peer/tmp
Running check for <TESTBASE>/test/peer/tmp ...
Checking for modified files <TESTBASE>/test/peer/tmp 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/tmp' 
New file: <TESTBASE>/test/peer/tmp
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
mark other operation: 'MKDIR' 'local:<TESTBASE>/test/peer/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/peer/tmp') AND peername = 'local' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/tmp'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/tmp', 0, 'peer', 'local', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53090172, NULL, 1, 16877, 1, 1736899547)
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/peer/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE myname = 'peer' AND (checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' AND device = <DEV> AND inode = <INODE>  OR filename = '<TESTBASE>/test/peer/tmp') AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/tmp'  AND  myname = 'peer' AND peername like 'other'
csync2_db_SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode, type, mtime) VALUES ('<TESTBASE>/test/peer/tmp', 0, 'peer', 'other', 'MKDIR', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53090172, NULL, 1, 16877, 1, 1736899547)
INSERT/UPDATE: <TESTBASE>/test/peer/tmp (null)
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/tmp', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53090172, NULL, 16877, 4096, 1736899547, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53090172, digest = NULL, mode = 16877, size = 4096, mtime = 1736899547, type = 1
Inserted/updated <TESTBASE>/test/peer/tmp rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/tmp.
file <TESTBASE>/test/peer/tmp encoded <TESTBASE>/test/peer/tmp. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/tmp'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
check_pure: filename: '<TESTBASE>/test/peer/tmp' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/tmp is just marked dirty
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/tmp' and peername = 'local' and myname = 'peer' LIMIT 1
db_sql_is_dirty <TESTBASE>/test/peer/tmp:local 1 16877
SQL Query finished.
daemon_check_dirty: peer operation  local <TESTBASE>/test/peer/tmp MKDIR
Ignoring dirty directory <TESTBASE>/test/peer/tmp
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/tmp'  AND  myname = 'peer' AND peername like '%'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
setown <TESTBASE>/test/peer/tmp rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/tmp' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/tmp', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53090172, NULL, 16877, 4096, 1736899546, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53090172, digest = NULL, mode = 16877, size = 4096, mtime = 1736899546, type = 1
Updated(mod) local:<TESTBASE>/test/peer/tmp  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/tmp
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 53089430, NULL, 16877, 4096, 1736899546, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 53089430, digest = NULL, mode = 16877, size = 4096, mtime = 1736899546, type = 1
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
Connection closed. Pid 2656399 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656399
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
csync_daemon_sig: unused parameters: ftime 0 size 0<2656399> CONN local < OK (not_found).

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
Connection closed. Pid 2656399 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656399
