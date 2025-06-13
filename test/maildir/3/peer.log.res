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
Mode: 64 Flags: 0 PID: 2797512
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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
csync_daemon_sig: unused parameters: ftime 1736905921 size 4096<2797512> CONN local < OK (not_found).

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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348024, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348024, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
csync_daemon_sig: unused parameters: ftime 1736905921 size 4096<2797512> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
daemon_check_dirty: <TESTBASE>/test/peer/Maildir
Running check for <TESTBASE>/test/peer/Maildir ...
Checking for modified files <TESTBASE>/test/peer/Maildir 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
check_mod: No such file '<TESTBASE>/test/peer/Maildir' .
Checking for deleted files <TESTBASE>/test/peer/Maildir.
file <TESTBASE>/test/peer/Maildir encoded <TESTBASE>/test/peer/Maildir. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
mkdir <TESTBASE>/test/peer/Maildir rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/' 53, 53.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348025, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348025, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1590962400 size 4096<2797512> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_mod: No such file '<TESTBASE>/test/peer/Maildir/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
file <TESTBASE>/test/peer/Maildir/cur encoded <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
mkdir <TESTBASE>/test/peer/Maildir/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/' 58, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1590962400, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
csync_daemon_sig: unused parameters: ftime 1590962400 size 4096<2797512> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new
Running check for <TESTBASE>/test/peer/Maildir/new ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
check_mod: No such file '<TESTBASE>/test/peer/Maildir/new' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/new.
file <TESTBASE>/test/peer/Maildir/new encoded <TESTBASE>/test/peer/Maildir/new. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/new' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
mkdir <TESTBASE>/test/peer/Maildir/new rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/new', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348027, NULL, 16877, 4096, 1590962400, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348027, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
csync_daemon_sig: unused parameters: ftime 1590962400 size 4096<2797512> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
check_mod: No such file '<TESTBASE>/test/peer/Maildir/tmp' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
file <TESTBASE>/test/peer/Maildir/tmp encoded <TESTBASE>/test/peer/Maildir/tmp. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/tmp' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
mkdir <TESTBASE>/test/peer/Maildir/tmp rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/tmp', 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348028, NULL, 16877, 4096, 1590962400, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1590962400:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348028, digest = NULL, mode = 16877, size = 4096, mtime = 1590962400, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/tmp  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
csync_daemon_sig: unused parameters: ftime 1736905921 size 4096<2797512> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash
Running check for <TESTBASE>/test/peer/Maildir/.Trash ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash.
file <TESTBASE>/test/peer/Maildir/.Trash encoded <TESTBASE>/test/peer/Maildir/.Trash. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
mkdir <TESTBASE>/test/peer/Maildir/.Trash rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348029, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348029, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736905921 size 4096<2797512> CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
check_mod: No such file '<TESTBASE>/test/peer/Maildir/.Trash/cur' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
file <TESTBASE>/test/peer/Maildir/.Trash/cur encoded <TESTBASE>/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
mkdir <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348031, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348031, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
Updated(mkdir) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash' 66, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348029, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348029, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348025, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348025, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
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
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348024, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348024, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55d6573b3fc0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55d6573b3ca0
Closed db: 0x55d6573b3ca0
Closed db: 0x55d6573b3ca0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2797512 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2797512
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
csync_daemon_sig: unused parameters: ftime 1736905926 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/' 53, 53.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new
Running check for <TESTBASE>/test/peer/Maildir/new ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/new' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/new.
file <TESTBASE>/test/peer/Maildir/new encoded <TESTBASE>/test/peer/Maildir/new. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/new' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
setown <TESTBASE>/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/new', 'v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348027, NULL, 16877, 4096, 1736905926, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348027, digest = NULL, mode = 16877, size = 4096, mtime = 1736905926, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
csync_daemon_sig: unused parameters: ftime 1736905926 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp
Running check for <TESTBASE>/test/peer/Maildir/tmp ...
Checking for modified files <TESTBASE>/test/peer/Maildir/tmp 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/tmp' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/tmp.
file <TESTBASE>/test/peer/Maildir/tmp encoded <TESTBASE>/test/peer/Maildir/tmp. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/tmp  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/tmp' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
setown <TESTBASE>/test/peer/Maildir/tmp rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/tmp' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/tmp'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/tmp' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/tmp
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/tmp', 'v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348028, NULL, 16877, 4096, 1736905926, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348028, digest = NULL, mode = 16877, size = 4096, mtime = 1736905926, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/tmp  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/tmp
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<2797512> CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - 1234 1000 dennis schafroth 33188 - 8 1591567200'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Running check for <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
check_mod: No such file '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' .
Checking for deleted files <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764.
file <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 encoded <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  hostname = 'peer' ORDER BY filename
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
daemon CREATE <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Locking '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764'
Redis reply: SET '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '1736905926' NX EX 60 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 1736905926
CONN local < OK 
CONN local > 'octet-stream 8'
Got octet-stream 8
Content length in buffer: 'octet-stream 8' size: 8 rc: 0 (octet-stream)
Receiving 8 bytes (chunked)..
Got 8 bytes, 0 bytes left ..
settime <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' 70, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348033, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348033, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(create) local:<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/new/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/new', 'v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348027, NULL, 16877, 4096, 1736905926, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905926:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348027, digest = NULL, mode = 16877, size = 4096, mtime = 1736905926, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348025, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348025, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55d6573b0260
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55d6573afbc0
Closed db: 0x55d6573afbc0
Closed db: 0x55d6573afbc0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2797512 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2797512
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736905941 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
file <TESTBASE>/test/peer/Maildir/cur encoded <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1736905941, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1736905941, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
csync_daemon_sig: unused parameters: ftime 1736905941 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new
Running check for <TESTBASE>/test/peer/Maildir/new ...
Checking for modified files <TESTBASE>/test/peer/Maildir/new 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/new' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/new.
file <TESTBASE>/test/peer/Maildir/new encoded <TESTBASE>/test/peer/Maildir/new. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/new  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/new' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
setown <TESTBASE>/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/new', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348027, NULL, 16877, 4096, 1736905941, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348027, digest = NULL, mode = 16877, size = 4096, mtime = 1736905941, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/new  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' '1736905941' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 1736905941
NOT IMPLEMENTED: csync_db_update_path (update DB recursive)
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764'  AND  hostname = 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' 70, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348033, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348033, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mv) local:<TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new/1434.M21,S=6631,W=6764
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/new
settime <TESTBASE>/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/new' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/new'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/new' 66, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/new
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/new', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348027, NULL, 16877, 4096, 1736905941, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348027, digest = NULL, mode = 16877, size = 4096, mtime = 1736905941, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1736905941, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905941:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1736905941, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348025, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348025, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55d6573c10b0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55d6573c0a50
Closed db: 0x55d6573c0a50
Closed db: 0x55d6573c0a50
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2797512 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2797512
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736905944 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
file <TESTBASE>/test/peer/Maildir/cur encoded <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1736905944:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1736905944, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905944:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1736905944, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2, %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '1736905944' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 1736905944
NOT IMPLEMENTED: csync_db_update_path (update DB recursive)
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'  AND  hostname = 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' 70, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348033, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348033, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mv) local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1736905944:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1736905944, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905944:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1736905944, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348025, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348025, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55d6573f33f0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55d6573f9700
Closed db: 0x55d6573f9700
Closed db: 0x55d6573f9700
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2797512 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2797512
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736905947 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
file <TESTBASE>/test/peer/Maildir/cur encoded <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1736905947, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1736905947, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736905947 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
file <TESTBASE>/test/peer/Maildir/.Trash/cur encoded <TESTBASE>/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 73.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 73.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348031, NULL, 16877, 4096, 1736905947, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348031, digest = NULL, mode = 16877, size = 4096, mtime = 1736905947, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Locking 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis reply: SET 'MOVED_TO:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '1736905949' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1736905949
NOT IMPLEMENTED: csync_db_update_path (update DB recursive)
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'  AND  hostname = 'peer'
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348033, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348033, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mv) local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<2797512> CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync_daemon_sig: unused parameters: ftime 1591567200 size 8<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 70.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S '
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Running check for <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.
file <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST encoded <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 70.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
HARDLINK: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 70.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348033, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348033, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 77, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2049, 53348033, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1591567200, 2) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1591567200:mode=33188:user=dennis:group=schafroth:type=reg:size=8', device = 2049, inode = 53348033, digest = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', mode = 33188, size = 8, mtime = 1591567200, type = 2
Updated(mkhardlink) local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/cur/' 77, 73.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348031, NULL, 16877, 4096, 1736905947, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348031, digest = NULL, mode = 16877, size = 4096, mtime = 1736905947, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1736905947, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905947:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1736905947, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348029, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348029, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348025, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348025, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55d6573f3d00
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55d6573f3a20
Closed db: 0x55d6573f3a20
Closed db: 0x55d6573f3a20
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2797512 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2797512
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
csync_daemon_sig: unused parameters: ftime 1736905950 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/' 58, 58.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur
Running check for <TESTBASE>/test/peer/Maildir/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur.
file <TESTBASE>/test/peer/Maildir/cur encoded <TESTBASE>/test/peer/Maildir/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
setown <TESTBASE>/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur' 66, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/cur', 'v2:mtime=1736905950:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348026, NULL, 16877, 4096, 1736905950, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905950:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348026, digest = NULL, mode = 16877, size = 4096, mtime = 1736905950, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
csync_daemon_sig: unused parameters: ftime 1736905950 size 4096<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur.
file <TESTBASE>/test/peer/Maildir/.Trash/cur encoded <TESTBASE>/test/peer/Maildir/.Trash/cur. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 73.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
setown <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=1 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur' 73, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 73.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash/cur
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash/cur', 'v2:mtime=1736905950:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348031, NULL, 16877, 4096, 1736905950, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905950:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348031, digest = NULL, mode = 16877, size = 4096, mtime = 1736905950, type = 1
Updated(mod) local:<TESTBASE>/test/peer/Maildir/.Trash/cur  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
csync_daemon_sig: unused parameters: ftime 0 size 0<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/' 73, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST '
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Running check for <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST ...
Checking for modified files <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.
file <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST encoded <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check_pure: filename: '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 70, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 70.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
backup <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir/cur 0 16877
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST filename: <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.2' to '/tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.1' to '/tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' to '/tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.1'. rc = 0
Copying data from <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to backup file /tmp/csync2<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '1736905950' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1736905950
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  AND  hostname = 'peer'
Updated(del) local:<TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
csync_daemon_sig: unused parameters: ftime 0 size 0<2797512> check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 77, cached path: '<TESTBASE>/test/peer/Maildir/cur/' 70, 66.
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Csync2 / Librsync: csync_rs_sig('<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S')
Opening basis_file and sig_file..
Running rs_sig_file() from librsync..
Sending sig_file for <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S to peer.
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-' 
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S '
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Running check for <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S ...
Checking for modified files <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE hostname = 'peer' AND filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
Checking for deleted files <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.
file <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S encoded <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. Hostname: peer 
SQL: SELECT filename, checktxt, device, inode, mode FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  hostname = 'peer' ORDER BY filename
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 77, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/cur/' 77, 77.
SQL Query finished.
daemon_check_dirty: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S  is clean
SQL: SELECT op, mode FROM dirty WHERE filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' and peername = 'local' and myname = 'peer' LIMIT 1
SQL Query finished.
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
backup <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 0 
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
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash 0 16877
backupdir stat: /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur 0 16877
backup_rename FILE: /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S filename: <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S i: 
check backup generation /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.2' to '/tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.1' to '/tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' to '/tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.1'. rc = 0
Copying data from <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S to backup file /tmp/csync2<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
csync_backup loop end
csync_backup end
Locking 'DELETE:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
Redis reply: SET 'DELETE:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '1736905950' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 1736905950
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  myname = 'peer' AND peername like 'local'
csync2_db_SQL: DELETE FROM file WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'  AND  hostname = 'peer'
Updated(del) local:<TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S  
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir/.Trash
settime <TESTBASE>/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir/.Trash' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir/.Trash'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir/.Trash' 66, cached path: '<TESTBASE>/test/peer/Maildir/.Trash/cur/' 77, 66.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir/.Trash
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir/.Trash', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348029, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348029, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
Match (+): <TESTBASE>/test/peer on <TESTBASE>/test/peer/Maildir
settime <TESTBASE>/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
DEBUG daemon: check update rc=0 'local' '<TESTBASE>/test/peer/Maildir' '-' 
csync2_db_SQL: DELETE FROM dirty WHERE  filename = '<TESTBASE>/test/peer/Maildir'  AND  myname = 'peer' AND peername like 'local'
check_pure: filename: '<TESTBASE>/test/peer/Maildir' 58, cached path: '<TESTBASE>/test/peer/Maildir/' 66, 58.
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/Maildir
csync2_db_SQL: INSERT INTO file (hostname, filename, checktxt, device, inode, digest, mode, size, mtime, type) VALUES ('peer', '<TESTBASE>/test/peer/Maildir', 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', 2049, 53348025, NULL, 16877, 4096, 1736905921, 1) ON CONFLICT (filename, hostname) DO UPDATE SET checktxt = 'v2:mtime=1736905921:mode=16877:user=dennis:group=schafroth:type=dir', device = 2049, inode = 53348025, digest = NULL, mode = 16877, size = 4096, mtime = 1736905921, type = 1
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

MODE 64
Redis closing: 0x55d6574070b0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55d65740abd0
Closed db: 0x55d65740abd0
Closed db: 0x55d65740abd0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2797512 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2797512
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
GIT:           b8214a6e418039b86e12c87455fe9c31556e815f-dirty
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
csync_daemon_sig: unused parameters: ftime 0 size 0<2797512> check_pure: filename: '<TESTBASE>/test/peer' 53, cached path: '<TESTBASE>/test/peer/' 58, 53.
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
6 files within directory '<TESTBASE>/test/peer': 
SQL Query finished.
Deleting recursive from clean directory (<TESTBASE>/test/peer): 6 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/Maildir/* ..
Removing <TESTBASE>/test/peer/Maildir/tmp/* ..
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/tmp'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/tmp' '1736905952' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/tmp 1736905952
Removed directory <TESTBASE>/test/peer/Maildir/tmp 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/Maildir/tmp' OR filename LIKE '<TESTBASE>/test/peer/Maildir/tmp/%')  AND  hostname = 'peer'
Removing <TESTBASE>/test/peer/Maildir/new/* ..
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/new'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/new' '1736905952' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/new 1736905952
Removed directory <TESTBASE>/test/peer/Maildir/new 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/Maildir/new' OR filename LIKE '<TESTBASE>/test/peer/Maildir/new/%')  AND  hostname = 'peer'
Removing <TESTBASE>/test/peer/Maildir/cur/* ..
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/cur'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/cur' '1736905952' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/cur 1736905952
Removed directory <TESTBASE>/test/peer/Maildir/cur 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/Maildir/cur' OR filename LIKE '<TESTBASE>/test/peer/Maildir/cur/%')  AND  hostname = 'peer'
Removing <TESTBASE>/test/peer/Maildir/.Trash/* ..
Removing <TESTBASE>/test/peer/Maildir/.Trash/cur/* ..
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/.Trash/cur'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/.Trash/cur' '1736905952' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/.Trash/cur 1736905952
Removed directory <TESTBASE>/test/peer/Maildir/.Trash/cur 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/Maildir/.Trash/cur' OR filename LIKE '<TESTBASE>/test/peer/Maildir/.Trash/cur/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/.Trash'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir/.Trash' '1736905952' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir/.Trash 1736905952
Removed directory <TESTBASE>/test/peer/Maildir/.Trash 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/Maildir/.Trash' OR filename LIKE '<TESTBASE>/test/peer/Maildir/.Trash/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer/Maildir' '1736905952' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer/Maildir 1736905952
Removed directory <TESTBASE>/test/peer/Maildir 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer/Maildir' OR filename LIKE '<TESTBASE>/test/peer/Maildir/%')  AND  hostname = 'peer'
Locking 'DELETE,IS_DIR:<TESTBASE>/test/peer'
Redis reply: SET 'DELETE,IS_DIR:<TESTBASE>/test/peer' '1736905952' NX EX 300 -> OK
csync_redis_lock: OK <TESTBASE>/test/peer 1736905952
Removed directory <TESTBASE>/test/peer 0
csync2_db_SQL: DELETE FROM file WHERE  (filename = '<TESTBASE>/test/peer' OR filename LIKE '<TESTBASE>/test/peer/%')  AND  hostname = 'peer'
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 6 1 
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
Redis closing: 0x55d657407870
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55d65740a2c0
Closed db: 0x55d65740a2c0
Closed db: 0x55d65740a2c0
csync_config_destroy
csync_config_destroy end
Connection closed. Pid 2797512 mode 64 
goto nofork.
Mode: 64 Flags: 0 PID: 2797512
