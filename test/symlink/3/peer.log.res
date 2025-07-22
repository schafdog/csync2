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
GIT:           b6533f8fb67daf9e5335a557b1f91c7711d10543-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: check update rc=0 '(null)' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
csync_daemon_sig: unused parameters: ftime 1748673362 size 4096
CONN local < OK (not_found).

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
file <TESTBASE>/test/peer encoded <TESTBASE>/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer'
Redis reply: SET '<MTIME>' NX EX 1 -> OK
mkdir <TESTBASE>/test/peer rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '(null)' 0, 0.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 52710368, NULL, 16877, 4096, 1748673362, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 52710368, digest = NULL, mode = 16877, size = 4096, mtime = 1748673362, type = 1
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
csync_daemon_sig: unused parameters: ftime 1748673361 size 4
CONN local < OK (not_found).

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
file <TESTBASE>/test/peer/new_file 'N' all encoded <TESTBASE>/test/peer/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all'
Redis reply: SET '<MTIME>' NX EX 1 -> OK
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
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/new_file 'N' all' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/new_file 'N' all' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/new_file ''N'' all', 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', 2049, 52710369, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1748673361, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4', device = 2049, inode = 52710369, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1748673361, type = 2
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all
Updated(create) local:<TESTBASE>/test/peer/new_file 'N' all  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new_file 'N' all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
csync_daemon_sig: unused parameters: ftime 1748673362 size 16
CONN local < OK (not_found).

CONN local > 'MKLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link new_file%20%27N%27%20all'
Command: local: MKLINK <TESTBASE>/test/peer/new_file 'N' all.link new_file 'N' all        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
check_mod: No such file '<TESTBASE>/test/peer/new_file 'N' all.link' .
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
file <TESTBASE>/test/peer/new_file 'N' all.link encoded <TESTBASE>/test/peer/new_file ''N'' all.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/new_file ''N'' all.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/new_file 'N' all.link' 'new_file 'N' all' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/new_file 'N' all.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/new_file ''N'' all.link', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all', 2049, 52710370, NULL, 41471, 16, 1748673362, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all', device = 2049, inode = 52710370, digest = NULL, mode = 41471, size = 16, mtime = 1748673362, type = 6
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all.link
csync2_db_SQL: DELETE FROM dirty WHERE  filename = 'new_file ''N'' all'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = 'new_file ''N'' all'  AND  hostname = 'peer'
Updated(mklink) local:<TESTBASE>/test/peer/new_file 'N' all.link new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all.link MKLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SETOWN <TESTBASE>/test/peer/new_file 'N' all.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all.link' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/new_file ''N'' all.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
file <TESTBASE>/test/peer/new_file 'N' all.link encoded <TESTBASE>/test/peer/new_file ''N'' all.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
check_pure: filename: '<TESTBASE>/test/peer/new_file 'N' all.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/new_file ''N'' all.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/new_file 'N' all.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/new_file 'N' all.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/new_file ''N'' all.link', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all', 2049, 52710370, NULL, 41471, 16, 1748673362, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all', device = 2049, inode = 52710370, digest = NULL, mode = 41471, size = 16, mtime = 1748673362, type = 6
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all.link
Updated(setown) local:<TESTBASE>/test/peer/new_file 'N' all.link  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all.link SETOWN 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new_file 'N' all.link xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
settime <TESTBASE>/test/peer/new_file 'N' all.link rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/new_file 'N' all.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/new_file 'N' all.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/new_file ''N'' all.link', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all', 2049, 52710370, NULL, 41471, 16, 1748673362, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=new_file ''N'' all', device = 2049, inode = 52710370, digest = NULL, mode = 41471, size = 16, mtime = 1748673362, type = 6
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/new_file 'N' all.link
Daemon end_command <TESTBASE>/test/peer/new_file 'N' all.link SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 52710368, NULL, 16877, 4096, 1748673362, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 52710368, digest = NULL, mode = 16877, size = 4096, mtime = 1748673362, type = 1
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

MODE 64
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
goto nofork.
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
GIT:           b6533f8fb67daf9e5335a557b1f91c7711d10543-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: check update rc=0 '(null)' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
csync_daemon_sig: unused parameters: ftime 1748673363 size 4096
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
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
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer.
file <TESTBASE>/test/peer encoded <TESTBASE>/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer is clean
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 52710368, NULL, 16877, 4096, 1748673363, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 52710368, digest = NULL, mode = 16877, size = 4096, mtime = 1748673363, type = 1
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mod) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
csync_daemon_sig: unused parameters: ftime 1748673363 size 7
CONN local < OK (not_found).

CONN local > 'MKLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link missing'
Command: local: MKLINK <TESTBASE>/test/peer/bad.link missing        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
daemon_check_dirty: <TESTBASE>/test/peer/bad.link
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
check_mod: No such file '<TESTBASE>/test/peer/bad.link' .
Checking for deleted files <TESTBASE>/test/peer/bad.link.
file <TESTBASE>/test/peer/bad.link encoded <TESTBASE>/test/peer/bad.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/bad.link'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/bad.link is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/bad.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/bad.link' 'missing' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/bad.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/bad.link' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/bad.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/bad.link', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', 2049, 52710372, NULL, 41471, 7, 1748673364, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', device = 2049, inode = 52710372, digest = NULL, mode = 41471, size = 7, mtime = 1748673364, type = 6
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/bad.link
csync2_db_SQL: DELETE FROM dirty WHERE  filename = 'missing'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = 'missing'  AND  hostname = 'peer'
Updated(mklink) local:<TESTBASE>/test/peer/bad.link missing 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Daemon end_command <TESTBASE>/test/peer/bad.link MKLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SETOWN <TESTBASE>/test/peer/bad.link user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
daemon_check_dirty: <TESTBASE>/test/peer/bad.link
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/bad.link' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/bad.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/bad.link.
file <TESTBASE>/test/peer/bad.link encoded <TESTBASE>/test/peer/bad.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/bad.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
check_pure: filename: '<TESTBASE>/test/peer/bad.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/bad.link is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/bad.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/bad.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/bad.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/bad.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/bad.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/bad.link', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', 2049, 52710372, NULL, 41471, 7, 1748673364, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', device = 2049, inode = 52710372, digest = NULL, mode = 41471, size = 7, mtime = 1748673364, type = 6
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/bad.link
Updated(setown) local:<TESTBASE>/test/peer/bad.link  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Daemon end_command <TESTBASE>/test/peer/bad.link SETOWN 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/bad.link xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
settime <TESTBASE>/test/peer/bad.link rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/bad.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/bad.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/bad.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/bad.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/bad.link', 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', 2049, 52710372, NULL, 41471, 7, 1748673363, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=41471:user=<USER>:group=<GROUP>:type=lnk:target=missing', device = 2049, inode = 52710372, digest = NULL, mode = 41471, size = 7, mtime = 1748673363, type = 6
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/bad.link
Daemon end_command <TESTBASE>/test/peer/bad.link SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', 2049, 52710368, NULL, 16877, 4096, 1748673363, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir', device = 2049, inode = 52710368, digest = NULL, mode = 16877, size = 4096, mtime = 1748673363, type = 1
daemon_file_update DONE: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

MODE 64
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
goto nofork.
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
GIT:           b6533f8fb67daf9e5335a557b1f91c7711d10543-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 3'
Command: (null): DEBUG          
DEBUG from (null) 3
DEBUG daemon: check update rc=0 '(null)' '' '-' 
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
Command: local: STAT <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
csync_daemon_sig: unused parameters: ftime 0 size 0
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer' '-' 
Daemon end_command <TESTBASE>/test/peer STAT 0 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Command: local: DEL <TESTBASE>/test/peer         
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer.
file <TESTBASE>/test/peer encoded <TESTBASE>/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer is clean
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
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link
Running check for <TESTBASE>/test/peer/new_file 'N' all.link ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all.link 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all.link' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/new_file ''N'' all.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.link.
file <TESTBASE>/test/peer/new_file 'N' all.link encoded <TESTBASE>/test/peer/new_file ''N'' all.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
check_pure: filename: '<TESTBASE>/test/peer/new_file 'N' all.link' 58, cached path: '<TESTBASE>/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all.link is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/new_file ''N'' all.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
backup <TESTBASE>/test/peer/new_file 'N' all.link 0 
backupdir stat: /tmp/csync2/export 0 17901
backupdir stat: /tmp/csync2/export/home 0 16877
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 16877
backupdir stat: /tmp/csync2<TESTBASE> 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer 0 16877
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link filename: <TESTBASE>/test/peer/new_file 'N' all.link i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.2' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.1' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link.1'. rc = 0
Copying data from <TESTBASE>/test/peer/new_file 'N' all.link to backup file /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.link 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/new_file 'N' all.link'
Redis reply: SET '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/new_file 'N' all.link from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer'
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all
Running check for <TESTBASE>/test/peer/new_file 'N' all ...
Checking for modified files <TESTBASE>/test/peer/new_file 'N' all 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new_file 'N' all' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/new_file ''N'' all' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/new_file 'N' all.
file <TESTBASE>/test/peer/new_file 'N' all encoded <TESTBASE>/test/peer/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
check_pure: filename: '<TESTBASE>/test/peer/new_file 'N' all' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/new_file 'N' all is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
backup <TESTBASE>/test/peer/new_file 'N' all 0 
backupdir stat: /tmp/csync2/export 0 17901
backupdir stat: /tmp/csync2/export/home 0 16877
Changing owner of /tmp/csync2/<PATH> to user <UID> and group <GID>, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 16877
backupdir stat: /tmp/csync2<TESTBASE> 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer 0 16877
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all filename: <TESTBASE>/test/peer/new_file 'N' all i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.2' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.1' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all' to '/tmp/csync2<TESTBASE>/test/peer/new_file 'N' all.1'. rc = 0
Copying data from <TESTBASE>/test/peer/new_file 'N' all to backup file /tmp/csync2<TESTBASE>/test/peer/new_file 'N' all 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/new_file 'N' all'
Redis reply: SET '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/new_file 'N' all from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/new_file ''N'' all'  AND  hostname = 'peer'
daemon_check_dirty: <TESTBASE>/test/peer/bad.link
Running check for <TESTBASE>/test/peer/bad.link ...
Checking for modified files <TESTBASE>/test/peer/bad.link 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/bad.link' -> (null)
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/bad.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/bad.link.
file <TESTBASE>/test/peer/bad.link encoded <TESTBASE>/test/peer/bad.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/bad.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
check_pure: filename: '<TESTBASE>/test/peer/bad.link' 58, cached path: '<TESTBASE>/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/bad.link is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/bad.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
backup <TESTBASE>/test/peer/bad.link 0 
Locking 'DELETE:<TESTBASE>/test/peer/bad.link'
Redis reply: SET '<MTIME>' NX EX 1 -> OK
Removing <TESTBASE>/test/peer/bad.link from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/bad.link'  AND  hostname = 'peer'
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Redis reply: SET '<MTIME>' NX EX 1 -> OK
Removing directory <TESTBASE>/test/peer 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer' OR filename LIKE '<TESTBASE>/test/peer/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer'  AND  hostname = 'peer'
Updated(del) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
Daemon end_command <TESTBASE>/test/peer DEL 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link user/group'
Command: local: STAT <TESTBASE>/test/peer/bad.link user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/bad.link
csync_daemon_sig: unused parameters: ftime 0 size 0
CONN local < ERROR not found): 
CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all user/group'
Command: local: STAT <TESTBASE>/test/peer/new_file 'N' all user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all
csync_daemon_sig: unused parameters: ftime 0 size 0
CONN local < ERROR not found): 
CONN local > 'STAT 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link user/group'
Command: local: STAT <TESTBASE>/test/peer/new_file 'N' all.link user/group <UID> <GID> <USER> <GROUP>    
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/new_file 'N' all.link
csync_daemon_sig: unused parameters: ftime 0 size 0
CONN local < ERROR not found): 
CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

MODE 64
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
csync_config_destroy
csync_config_destroy end
goto nofork.
