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
Mode: 64 Flags: 0 PID: 2493603
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
csync_daemon_sig: unused parameters: ftime 1736892750 size 4096<2493603> CONN local < ERROR not found): 
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088343, NULL, 16877, 4096, 1736892749, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088343, digest = NULL, mode = 16877, size = 4096, mtime = 1736892749, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive', 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088344, NULL, 16877, 4096, 1736892749, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088344, digest = NULL, mode = 16877, size = 4096, mtime = 1736892749, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1' 68, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1', 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088345, NULL, 16877, 4096, 1736892749, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088345, digest = NULL, mode = 16877, size = 4096, mtime = 1736892749, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/' 68, 68.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2', 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088346, NULL, 16877, 4096, 1736892749, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088346, digest = NULL, mode = 16877, size = 4096, mtime = 1736892749, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3' 72, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/' 70, 70.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3', 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088347, NULL, 16877, 4096, 1736892749, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088347, digest = NULL, mode = 16877, size = 4096, mtime = 1736892749, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/' 72, 72.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4', 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088348, NULL, 16877, 4096, 1736892749, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088348, digest = NULL, mode = 16877, size = 4096, mtime = 1736892749, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' 76, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/' 74, 74.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5', 'v2:mtime=1736892750:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088349, NULL, 16877, 4096, 1736892750, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892750:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088349, digest = NULL, mode = 16877, size = 4096, mtime = 1736892750, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c user/group 1234 1000 dennis schafroth 33188 - 11 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
csync_daemon_sig: unused parameters: ftime 1736892750 size 11<2493603> CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c - 1234 1000 dennis schafroth 33188 - 11 1736892750'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' '1736892751' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 1736892751
CONN local < OK 
CONN local > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
Receiving 0 bytes (chunked)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' 78, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/' 76, 76.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c', 'v2:mtime=1736892750:mode=33188:user=dennis:group=schafroth:type=reg:size=0', 2049, 53088350, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 33188, 0, 1736892750, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892750:mode=33188:user=dennis:group=schafroth:type=reg:size=0', device = 2049, inode = 53088350, digest = 'da39a3ee5e6b4b0d3255bfef95601890afd80709', mode = 33188, size = 0, mtime = 1736892750, type = 2
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' 76, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/' 78, 76.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5', 'v2:mtime=1736892750:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088349, NULL, 16877, 4096, 1736892750, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892750:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088349, digest = NULL, mode = 16877, size = 4096, mtime = 1736892750, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/' 76, 74.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4', 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53088348, NULL, 16877, 4096, 1736892749, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53088348, digest = NULL, mode = 16877, size = 4096, mtime = 1736892749, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55ff79878fc0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55ff79878ca0
Closed db: 0x55ff79878ca0
Closed db: 0x55ff79878ca0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2493603 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2493603
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
csync_daemon_sig: unused parameters: ftime 0 size 0<2493603> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/' 74, 53.
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
csync_cmpchecktxt A: v2:mtime=1736892751:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/peer has changed: 
    v2:mtime=1736892751:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1736892749:mode=16877:user=dennis:group=schafroth:type=dir MKDIR
ignore flags: 512
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 1 dev_change: 0
INSERT/UPDATE: /export/home/dennis/Projects/csync2/csync2/test/test/peer 
csync2_db_SQL: UPDATE file set checktxt='v2:mtime=1736892751:mode=16877:user=dennis:group=schafroth:type=dir', device=2049, inode=53088343,                 digest='', mode=16877, mtime=1736892751, size=4096, type=1 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer rows matched: 0
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
7 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
SQL Query finished.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 7 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/* ..
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' 78, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' '1736892752' NX EX 60 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c -1
daemon RM: Failed to lock /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 0 
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
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 0 16877
backup_rename FILE: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c i: 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.1'. rc = 0
Copying data from /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c to backup file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 
csync_backup loop end
csync_backup end
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 1736892752
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c from file db.
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'  AND  hostname = 'peer'
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' -> 1
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 1736892752
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 1736892752
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 1736892752
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 1736892752
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 1736892752
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 1736892752
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer' '1736892752' NX EX 300 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer 1736892752
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 7 1 
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
Redis closing: 0x55ff798b1280
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55ff798b0f60
Closed db: 0x55ff798b0f60
Closed db: 0x55ff798b0f60
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2493603 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2493603
