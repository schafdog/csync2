Config-File:   csync2_pgsql_peer.cfg
Found my alias peer localhost 30861 
Binding to 30861 IPv0 
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
check_mod: No such file '<TESTBASE>/test/peer' .
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer'
mkdir <TESTBASE>/test/peer rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mkdir) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
check_mod: No such file '<TESTBASE>/test/peer/auto' .
Checking for deleted files <TESTBASE>/test/peer/auto.
daemon_check_dirty: <TESTBASE>/test/peer/auto is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/auto'
mkdir <TESTBASE>/test/peer/auto rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
Updated(mkdir) local:<TESTBASE>/test/peer/auto  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/younger failed stat
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/younger failed stat
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger
Running check for <TESTBASE>/test/peer/auto/younger ...
Checking for modified files <TESTBASE>/test/peer/auto/younger 
check_mod: No such file '<TESTBASE>/test/peer/auto/younger' .
Checking for deleted files <TESTBASE>/test/peer/auto/younger.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger is clean
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
daemon_check_auto_resolve: <TESTBASE>/test/peer/auto/younger failed stat
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/auto/younger'
mkdir <TESTBASE>/test/peer/auto/younger rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/auto/younger rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto/younger rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/younger
Updated(mkdir) local:<TESTBASE>/test/peer/auto/younger  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 12 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 12 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

Sending sig_file for <TESTBASE>/test/peer/auto/younger/local_oldest to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 12 xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 12 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
New file: <TESTBASE>/test/peer/auto/younger/local_oldest
csync_check_file_same_dev_inode <TESTBASE>/test/peer/auto/younger/local_oldest <TESTBASE>/test/peer/auto/younger/local_oldest
mark other operation: 'NEW' 'local:<TESTBASE>/test/peer/auto/younger/local_oldest' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/peer/auto/younger/local_oldest' '-'.
Inserted/updated <TESTBASE>/test/peer/auto/younger/local_oldest rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest is just marked dirty
daemon_check_dirty: peer operation  local <TESTBASE>/test/peer/auto/younger/local_oldest NEW
File <TESTBASE>/test/peer/auto/younger/local_oldest is dirty here: NEW 2
File local:<TESTBASE>/test/peer/auto/younger/local_oldest is dirty here. Continuing.
ERROR: File is also marked dirty here! (<TESTBASE>/test/peer/auto/younger/local_oldest)
CONN local < File also marked dirty here! 
CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest'
Command: local: GETTM <TESTBASE>/test/peer/auto/younger/local_oldest         
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
CONN local < OK (data_follows).

CONN local < 1623103200

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto/younger xxxxxxxx        
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/younger
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Inserted/updated <TESTBASE>/test/peer rows matched: 0
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
setown <TESTBASE>/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
Updated(mod) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/auto
Running check for <TESTBASE>/test/peer/auto ...
Checking for modified files <TESTBASE>/test/peer/auto 
Inserted/updated <TESTBASE>/test/peer/auto rows matched: 0
Checking for deleted files <TESTBASE>/test/peer/auto.
daemon_check_dirty: <TESTBASE>/test/peer/auto is clean
setown <TESTBASE>/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
Updated(mod) local:<TESTBASE>/test/peer/auto  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger
Running check for <TESTBASE>/test/peer/auto/younger ...
Checking for modified files <TESTBASE>/test/peer/auto/younger 
Checking for deleted files <TESTBASE>/test/peer/auto/younger.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger is clean
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger won auto resolved. clear dirty
setown <TESTBASE>/test/peer/auto/younger rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/auto/younger rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/younger
Updated(mod) local:<TESTBASE>/test/peer/auto/younger  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

Sending sig_file for <TESTBASE>/test/peer/auto/younger/local_oldest to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
Command: local: PATCH <TESTBASE>/test/peer/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxx
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest is clean
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger/local_oldest
check_auto_resolve: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolve
daemon dispatch: Remote local:<TESTBASE>/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
backup <TESTBASE>/test/peer/auto/younger/local_oldest 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.2' to '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.1' to '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest' to '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.1'. rc = 0
CONN local < OK 
Sending sig_file for <TESTBASE>/test/peer/auto/younger/local_oldest to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local > 'octet-stream 20'
Got octet-stream 20
Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/auto/younger/.local_oldest.XXXXXX'
Locking 'MOVED_TO:<TESTBASE>/test/peer/auto/younger/local_oldest'
settime <TESTBASE>/test/peer/auto/younger/local_oldest rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/younger/local_oldest
Updated(patch) local:<TESTBASE>/test/peer/auto/younger/local_oldest  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto/younger xxxxxxxx        
daemon: Auto resolve method YOUNGER 2 for local:<TESTBASE>/test/peer/auto/younger
settime <TESTBASE>/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto/younger
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/auto xxxxxxxx        
settime <TESTBASE>/test/peer/auto rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/auto
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
Command: local: SIG <TESTBASE>/test/peer user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Command: local: DEL <TESTBASE>/test/peer         
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
backup <TESTBASE>/test/peer 0 
3 files within directory '<TESTBASE>/test/peer': 
Deleting recursive from clean directory (<TESTBASE>/test/peer): 3 
Calling csync_rmdir_recursive local:<TESTBASE>/test/peer. Errors 0
Removing <TESTBASE>/test/peer/* ..
Removing <TESTBASE>/test/peer/auto/* ..
Removing <TESTBASE>/test/peer/auto/younger/* ..
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest
Running check for <TESTBASE>/test/peer/auto/younger/local_oldest ...
Checking for modified files <TESTBASE>/test/peer/auto/younger/local_oldest 
Checking for deleted files <TESTBASE>/test/peer/auto/younger/local_oldest.
daemon_check_dirty: <TESTBASE>/test/peer/auto/younger/local_oldest is clean
Removing file <TESTBASE>/test/peer/auto/younger/local_oldest
backup <TESTBASE>/test/peer/auto/younger/local_oldest 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.2' to '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.1' to '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest' to '/tmp/csync2<TESTBASE>/test/peer/auto/younger/local_oldest.1'. rc = 0
Locking 'DELETE:<TESTBASE>/test/peer/auto/younger/local_oldest'
Removing <TESTBASE>/test/peer/auto/younger/local_oldest from file db.
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/auto/younger'
Removed directory <TESTBASE>/test/peer/auto/younger 0
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/auto'
Removed directory <TESTBASE>/test/peer/auto 0
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer'
Removed directory <TESTBASE>/test/peer 0
Called csync_rmdir_recursive local:<TESTBASE>/test/peer. RC: 1 0
Deleted recursive from clean directory (<TESTBASE>/test/peer): 3 1 
Updated(del) local:<TESTBASE>/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
