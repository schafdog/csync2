csync_hostinfo (nil)
standalone: 64 server_standalone > 0: 1
server standalone 64 server_standalone > 0: 1
No command line port. Reading config
Config-File:   csync2_mysql_peer.cfg
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
Mode: 64 Flags: 0 PID: 3245434
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
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
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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
csync_daemon_sig: unused parameters: ftime 1736112252 size 4096<3245434> CONN local < OK (not_found).

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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360968, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360968, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync_daemon_sig: unused parameters: ftime 1736112252 size 4096<3245434> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360969, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360969, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
csync_daemon_sig: unused parameters: ftime 1736112252 size 4096<3245434> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360970, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360970, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736112252 size 4096<3245434> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360971, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360971, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1590962400 size 4096<3245434> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1590962400, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync_daemon_sig: unused parameters: ftime 1590962400 size 4096<3245434> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360973, NULL, 16877, 4096, 1590962400, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360973, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
csync_daemon_sig: unused parameters: ftime 1590962400 size 4096<3245434> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360974, NULL, 16877, 4096, 1590962400, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360974, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360970, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360970, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360969, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360969, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360968, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360968, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55f1db605890
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f1db5ffce0
Closed db: 0x55f1db5ffce0
Closed db: 0x55f1db5ffce0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 3245434 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 3245434
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
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
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync_daemon_sig: unused parameters: ftime 1736112254 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new', 'v2:mtime=1736112254:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360973, NULL, 16877, 4096, 1736112254, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112254:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360973, digest = NULL, mode = 16877, size = 4096, mtime = 1736112254, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
csync_daemon_sig: unused parameters: ftime 1736112254 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp', 'v2:mtime=1736112254:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360974, NULL, 16877, 4096, 1736112254, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112254:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360974, digest = NULL, mode = 16877, size = 4096, mtime = 1736112254, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<3245434> CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'
Redis reply: SET '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '1736112254' NX EX 60 -> OK
csync_redis_lock: OK /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 1736112254
CONN local < OK 
Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 to peer.
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
Csync2 / Librsync: csync_rs_patch('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764')
Receiving delta_file from peer..
CONN local > 'octet-stream 14'
Got octet-stream 14
Content length in buffer: 'octet-stream 14' size: 14 rc: 0 (octet-stream)
Receiving 14 bytes (octet-stream)..
Got 14 bytes, 0 bytes left ..
Opening to be patched file on local host..
Opening temp file for new data on local host..
Locking 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/.1434.M21,S=6631,W=6764.XXXXXX'
Redis reply: SET 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/.1434.M21,S=6631,W=6764.XXXXXX' '1736112254' NX EX 600 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/.1434.M21,S=6631,W=6764.XXXXXX -1
Running rs_patch_file() from librsync..
Renaming tmp file to orig. filename..
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'
Redis reply: SET 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '1736112254' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 -1
File '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' has been patched successfully.
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'
Redis Reply: DEL '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' -> 1
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 56360976, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 56360976, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new', 'v2:mtime=1736112254:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360973, NULL, 16877, 4096, 1736112254, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112254:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360973, digest = NULL, mode = 16877, size = 4096, mtime = 1736112254, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360969, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360969, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55f1db60bfe0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f1db60be20
Closed db: 0x55f1db60be20
Closed db: 0x55f1db60be20
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 3245434 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 3245434
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
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
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736112255 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1736112255, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1736112255, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync_daemon_sig: unused parameters: ftime 1736112255 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new', 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360973, NULL, 16877, 4096, 1736112255, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360973, digest = NULL, mode = 16877, size = 4096, mtime = 1736112255, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'
Redis reply: SET 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' '1736112255' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, -1
NOT IMPLEMENTED: csync_db_update_path (update DB recursive)
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  hostname = 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 56360976, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 56360976, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mv) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2, user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 70.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new', 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360973, NULL, 16877, 4096, 1736112255, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360973, digest = NULL, mode = 16877, size = 4096, mtime = 1736112255, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1736112255, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112255:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1736112255, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360969, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360969, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55f1db61cd30
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f1db61cb70
Closed db: 0x55f1db61cb70
Closed db: 0x55f1db61cb70
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 3245434 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 3245434
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
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
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736112258 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1736112258:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1736112258, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112258:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1736112258, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2, %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Redis reply: SET 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '1736112258' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S -1
NOT IMPLEMENTED: csync_db_update_path (update DB recursive)
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  hostname = 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 56360976, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 56360976, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mv) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 70.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1736112258:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1736112258, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112258:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1736112258, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360969, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360969, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55f1db60b580
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f1db60b3c0
Closed db: 0x55f1db60b3c0
Closed db: 0x55f1db60b3c0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 3245434 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 3245434
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
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
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736112259 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 73.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 73.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360971, NULL, 16877, 4096, 1736112259, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360971, digest = NULL, mode = 16877, size = 4096, mtime = 1736112259, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736112259 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1736112259, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1736112259, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis reply: SET 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -1
NOT IMPLEMENTED: csync_db_update_path (update DB recursive)
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  hostname = 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 56360976, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 56360976, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mv) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 70.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<3245434> CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 70.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S '
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 70.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 70.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 56360976, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 56360976, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 77, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 56360976, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 56360976, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/' 77, 73.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360971, NULL, 16877, 4096, 1736112259, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360971, digest = NULL, mode = 16877, size = 4096, mtime = 1736112259, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1736112259, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112259:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1736112259, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360969, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360969, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360970, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360970, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55f1db632470
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f1db636290
Closed db: 0x55f1db636290
Closed db: 0x55f1db636290
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 3245434 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 3245434
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
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
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736112261 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 73.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' 73, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 73.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736112261:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360971, NULL, 16877, 4096, 1736112261, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112261:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360971, digest = NULL, mode = 16877, size = 4096, mtime = 1736112261, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736112261 size 4096<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/' 73, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur', 'v2:mtime=1736112261:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360972, NULL, 16877, 4096, 1736112261, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112261:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360972, digest = NULL, mode = 16877, size = 4096, mtime = 1736112261, type = 1
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync_daemon_sig: unused parameters: ftime 0 size 0<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 77, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S '
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 77, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/' 77, 77.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 0 
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
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 0 16877
backup_rename FILE: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S i: 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.1'. rc = 0
Copying data from /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S to backup file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
csync_backup loop end
csync_backup end
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S -1
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  hostname = 'peer'
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync_daemon_sig: unused parameters: ftime 0 size 0<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/' 77, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST '
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.
file /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST encoded /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  hostname = 'peer' ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 70.
SQL Query finished.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 0 
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
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 0 16877
backupdir stat: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 0 16877
backup_rename FILE: /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST i: 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.1'. rc = 0
Copying data from /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to backup file /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
csync_backup loop end
csync_backup end
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis reply: SET 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -1
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  hostname = 'peer'
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' 58, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/' 70, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360969, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360969, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/peer on /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' 66, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash', 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 56360970, NULL, 16877, 4096, 1736112252, 1) ON DUPLICATE KEY UPDATE checktxt = 'v2:mtime=1736112252:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 56360970, digest = NULL, mode = 16877, size = 4096, mtime = 1736112252, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55f1db640840
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f1db640680
Closed db: 0x55f1db640680
Closed db: 0x55f1db640680
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 3245434 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 3245434
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
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
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
GIT:           c38fd720d8c494e8586ec4779af7f60e5bb8b39c-dirty
Opening shared library libmariadb.so
Reading symbols from shared library libmariadb.so
Default encoding utf8mb4
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
csync_daemon_sig: unused parameters: ftime 0 size 0<3245434> check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/peer' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/' 66, 53.
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
6 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
SQL Query finished.
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 6 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp/* ..
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp/%')  AND  hostname = 'peer'
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/* ..
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/%')  AND  hostname = 'peer'
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/* ..
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/%')  AND  hostname = 'peer'
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/* ..
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer'
Redis reply: SET 'DELETE,IS_DIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer' '1736112261' NX EX 300 -> (null)
csync_redis_lock: ERR /export/home/dennis/Projects/csync2/csync2/test/test/peer -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer' OR filename LIKE '/export/home/dennis/Projects/csync2/csync2/test/test/peer/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 6 1 
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
Redis closing: 0x55f1db6486e0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55f1db648520
Closed db: 0x55f1db648520
Closed db: 0x55f1db648520
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 3245434 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 3245434
