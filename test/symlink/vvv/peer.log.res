csync_hostinfo (nil)
standalone: 64 server_standalone > 0: 1
server standalone 64 server_standalone > 0: 1
No command line port. Reading config
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/peer'.
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
Mode: 64 Flags: 0 PID: 2658870
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/peer'.
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync_daemon_sig: unused parameters: ftime 1736899582 size 4096<2658870> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '(null)' 0, 0.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736899582:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53347117, NULL, 16877, 4096, 1736899582, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899582:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53347117, digest = NULL, mode = 16877, size = 4096, mtime = 1736899582, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
csync_daemon_sig: unused parameters: ftime 1736899581 size 4<2658870> CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '1736899582' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 1736899582
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all')
Receiving delta_file from peer..
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (chunked)..
Got 10 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/.new_file 'N' all.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/.new_file 'N' all.XXXXXX' '1736899582' NX EX 600 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/.new_file 'N' all.XXXXXX -1
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all'
Redis reply: SET 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '1736899582' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all -1
File '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' has been patched successfully.
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' -> 1
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all', 'v2:mtime=1736899581:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53347118, 'eeb4df3d04063049b45ea11a12354a37e8740687', 33188, 4, 1736899581, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899581:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53347118, digest = 'eeb4df3d04063049b45ea11a12354a37e8740687', mode = 33188, size = 4, mtime = 1736899581, type = 2
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link user/group 1234 1000 dennis schafroth 41471 - 16 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
csync_daemon_sig: unused parameters: ftime 1736899582 size 16<2658870> CONN local < OK (not_found).

CONN local > 'MKLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link new_file%20%27N%27%20all'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' 'new_file 'N' all' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link', 'v2:mtime=1736899582:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', 2049, 53347129, NULL, 41471, 16, 1736899582, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899582:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', device = 2049, inode = 53347129, digest = NULL, mode = 41471, size = 16, mtime = 1736899582, type = 6
csync2_db_SQL: DELETE FROM dirty WHERE  filename = 'new_file ''N'' all'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = 'new_file ''N'' all'  AND  hostname = 'peer'
Updated(mklink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link new_file 'N' all 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
CONN local < OK (cmd_finished).

CONN local > 'SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link user/group 1234 1000 dennis schafroth 41471 - 16 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link', 'v2:mtime=1736899582:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', 2049, 53347129, NULL, 41471, 16, 1736899582, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899582:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', device = 2049, inode = 53347129, digest = NULL, mode = 41471, size = 16, mtime = 1736899582, type = 6
Updated(setown) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new_file%20%27N%27%20all.link xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link', 'v2:mtime=1736899582:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', 2049, 53347129, NULL, 41471, 16, 1736899582, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899582:mode=41471:user=dennis:group=schafroth:type=lnk:target=new_file ''N'' all', device = 2049, inode = 53347129, digest = NULL, mode = 41471, size = 16, mtime = 1736899582, type = 6
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736899582:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53347117, NULL, 16877, 4096, 1736899582, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899582:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53347117, digest = NULL, mode = 16877, size = 4096, mtime = 1736899582, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5648a0beefc0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5648a0beeca0
Closed db: 0x5648a0beeca0
Closed db: 0x5648a0beeca0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2658870 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2658870
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/peer'.
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync_daemon_sig: unused parameters: ftime 1736899583 size 4096<2658870> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736899583:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53347117, NULL, 16877, 4096, 1736899583, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899583:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53347117, digest = NULL, mode = 16877, size = 4096, mtime = 1736899583, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link user/group 1234 1000 dennis schafroth 41471 - 7 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
csync_daemon_sig: unused parameters: ftime 1736899583 size 7<2658870> CONN local < OK (not_found).

CONN local > 'MKLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link missing'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 'missing' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link', 'v2:mtime=1736899583:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing', 2049, 53347242, NULL, 41471, 7, 1736899583, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899583:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing', device = 2049, inode = 53347242, digest = NULL, mode = 41471, size = 7, mtime = 1736899583, type = 6
csync2_db_SQL: DELETE FROM dirty WHERE  filename = 'missing'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = 'missing'  AND  hostname = 'peer'
Updated(mklink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link missing 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
CONN local < OK (cmd_finished).

CONN local > 'SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link user/group 1234 1000 dennis schafroth 41471 - 7 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link', 'v2:mtime=1736899583:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing', 2049, 53347242, NULL, 41471, 7, 1736899583, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899583:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing', device = 2049, inode = 53347242, digest = NULL, mode = 41471, size = 7, mtime = 1736899583, type = 6
Updated(setown) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/bad.link xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link', 'v2:mtime=1736899583:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing', 2049, 53347242, NULL, 41471, 7, 1736899583, 6) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899583:mode=41471:user=dennis:group=schafroth:type=lnk:target=missing', device = 2049, inode = 53347242, digest = NULL, mode = 41471, size = 7, mtime = 1736899583, type = 6
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736899583:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53347117, NULL, 16877, 4096, 1736899583, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899583:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53347117, digest = NULL, mode = 16877, size = 4096, mtime = 1736899583, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5648a0beb340
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5648a0bef720
Closed db: 0x5648a0bef720
Closed db: 0x5648a0bef720
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2658870 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2658870
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/peer'.
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
csync_daemon_sig: unused parameters: ftime 0 size 0<2658870> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
Directory: /export/home/dennis/Projects/csync2/csync2/test/test/peer skipping
SQL: SELECT count(*) FROM file WHERE filename like '/export/home/dennis/Projects/csync2/csync2/test/test/peer/%'
3 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
SQL Query finished.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' '1736899584' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 1736899584
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 0 
backupdir stat: /tmp/csync2/export 0 16877
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home 0 16877
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer 0 16877
backup_rename FILE: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link i: 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link.1'. rc = 0
Copying data from /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link to backup file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 
csync_backup loop end
csync_backup end
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' '1736899584' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link 1736899584
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all.link'  AND  hostname = 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.link' -> 1
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '1736899584' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 1736899584
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 0 
backupdir stat: /tmp/csync2/export 0 16877
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home 0 16877
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
backupdir stat: /tmp/csync2/export/home/dennis 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer 0 16877
backup_rename FILE: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all i: 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all.1'. rc = 0
Copying data from /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all to backup file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all 
csync_backup loop end
csync_backup end
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' '1736899584' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all -1
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all'  AND  hostname = 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all' -> 1
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' '1736899584' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 1736899584
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 0 
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' '1736899584' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link 1736899584
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'  AND  hostname = 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/bad.link' -> 1
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer' '1736899584' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  hostname = 'peer'
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5648a0c1e970
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5648a0c249a0
Closed db: 0x5648a0c249a0
Closed db: 0x5648a0c249a0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2658870 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2658870
