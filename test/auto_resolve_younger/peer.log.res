Config-File:   csync2_mysql_peer.cfg
Found my alias peer localhost 30861 
Binding to 30861 IPv0 
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1620424800 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 1620424800 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger failed stat
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger failed stat
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  is clean
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger failed stat
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 1620424800 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 1620424800 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1620424800 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 12 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 12 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest is just marked dirty
daemon_check_dirty: peer operation  local /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest NEW
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest is dirty here: NEW 2
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest)
CONN local < File also marked dirty here! 
CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
CONN local < OK (data_follows).

CONN local < 1623103200

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 1620424800 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1625695200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 1625695200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  is clean
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 1625695200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest  is clean
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1'. rc = 0
CONN local < OK 
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
Receiving 20 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest rc = 0 time: 1625695200 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 1625695200 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 1625695200 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1625695200 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_mysql_peer.cfg
My hostname is peer.
Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
3 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/* ..
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest  is clean
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1'. rc = 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest from file db.
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
