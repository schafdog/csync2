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
Mode: 64 Flags: 0 PID: 2656760
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
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090896, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53090896, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 62.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090896, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53090896, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5620d661dfc0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5620d661dca0
Closed db: 0x5620d661dca0
Closed db: 0x5620d661dca0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899550 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin', 'v2:mtime=1736899550:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899550, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899550:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899550, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5620d662c860
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5620d662c540
Closed db: 0x5620d662c540
Closed db: 0x5620d662c540
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
csync_daemon_sig: unused parameters: ftime 1736899548 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync_daemon_sig: unused parameters: ftime 1736899551 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 62.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 62.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local', 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899550 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 62.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local', 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53090896, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53090896, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5620d6627380
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5620d662ced0
Closed db: 0x5620d662ced0
Closed db: 0x5620d662ced0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync_daemon_sig: unused parameters: ftime 1736899551 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899553 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 62.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin', 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899553, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899553, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
csync_daemon_sig: unused parameters: ftime 1736899553 size 4<2656760> CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' '1736899553' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 1736899553
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej')
Receiving delta_file from peer..
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (chunked)..
Got 10 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/.hej.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/.hej.XXXXXX' '1736899553' NX EX 600 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/.hej.XXXXXX 1736899553
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'
Redis reply: SET 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' '1736899553' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 1736899553
File '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' has been patched successfully.
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' -> 1
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej', 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2049, 53091098, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4, 1736899553, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899553:mode=33188:user=dennis:group=schafroth:type=reg:size=4', device = 2049, inode = 53091098, digest = '32a0617aab4c9fe725f1b5bc441291180ad25b73', mode = 33188, size = 4, mtime = 1736899553, type = 2
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/' 73, 68.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin', 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899553, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899553:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899553, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 62.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local', 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr', 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091034, NULL, 16877, 4096, 1736899548, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899548:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091034, digest = NULL, mode = 16877, size = 4096, mtime = 1736899548, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5620d662fa10
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5620d66279f0
Closed db: 0x5620d66279f0
Closed db: 0x5620d66279f0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync_daemon_sig: unused parameters: ftime 1736899554 size 4096<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin', 'v2:mtime=1736899554:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091056, NULL, 16877, 4096, 1736899554, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899554:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091056, digest = NULL, mode = 16877, size = 4096, mtime = 1736899554, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
csync_daemon_sig: unused parameters: ftime 0 size 0<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/' 68, 68.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej '
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/' 73, 73.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 0 
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
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 0 16877
backup_rename FILE: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej i: 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.1'. rc = 0
Copying data from /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej to backup file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 
csync_backup loop end
csync_backup end
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' '1736899554' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 1736899554
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej'  AND  hostname = 'peer'
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' 62, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/' 73, 62.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local', 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53091035, NULL, 16877, 4096, 1736899551, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736899551:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53091035, digest = NULL, mode = 16877, size = 4096, mtime = 1736899551, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x5620d6639d40
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5620d6630280
Closed db: 0x5620d6630280
Closed db: 0x5620d6630280
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
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
csync_daemon_sig: unused parameters: ftime 0 size 0<2656760> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/' 62, 53.
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
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/* ..
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' '1736899555' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 1736899555
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' '1736899555' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 1736899555
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' '1736899555' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr 1736899555
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer' '1736899555' NX EX 300 -> (null)
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
Redis closing: 0x5620d666aca0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x5620d666aa00
Closed db: 0x5620d666aa00
Closed db: 0x5620d666aa00
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2656760 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2656760
