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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1742890056
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1742890056
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer is clean
Locking 'CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer'
csync_redis_lock: OK CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer 1742890056
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir user/group 1234 1000 dennis schafroth 16877 - 4096 1742890056
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir - 1234 1000 dennis schafroth 16877 - 4096 1742890056
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir is clean
Locking 'CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'
csync_redis_lock: OK CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890056
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1590962400
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 1590962400
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur is clean
Locking 'CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'
csync_redis_lock: OK CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 1742890056
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 1590962400
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 1590962400
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new is clean
Locking 'CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'
csync_redis_lock: OK CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 1742890056
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 1590962400
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 1590962400
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp is clean
Locking 'CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp'
csync_redis_lock: OK CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 1742890056
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash user/group 1234 1000 dennis schafroth 16877 - 4096 1742890056
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash - 1234 1000 dennis schafroth 16877 - 4096 1742890056
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash is clean
Locking 'CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'
csync_redis_lock: OK CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 1742890056
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1742890056
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 1742890056
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur is clean
Locking 'CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'
csync_redis_lock: OK CREATE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 1742890056
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 1742890059
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 1742890059
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 1742890059
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp - 1234 1000 dennis schafroth 16877 - 4096 1742890059
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 user/group 1234 1000 dennis schafroth 33188 - 8 1591567200
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - 1234 1000 dennis schafroth 33188 - 8 1591567200'
Command: local: CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 - 1234 1000 dennis schafroth 33188 - 8 1591567200
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 is clean
Locking 'CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764'
csync_redis_lock: OK CLOSE_WRITE,CLOSE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 1742890059
daemon CREATE /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 1 1742890059
CONN local < OK 
CONN local > 'octet-stream 8'
Got octet-stream 8
Content length in buffer: 'octet-stream 8' size: 8 rc: 0 (octet-stream)
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764
Updated(create) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 1742890059        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1742890060
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 1742890060
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new user/group 1234 1000 dennis schafroth 16877 - 4096 1742890060
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new - 1234 1000 dennis schafroth 16877 - 4096 1742890060
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,'
Command: local: MV /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,        
DAEMON_MV /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 Locking MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 1
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,'
csync_redis_lock: OK MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 1742890060
SQL MOVE: UPDATE file set filename = concat('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,',substring(filename,93)) WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764' or filename like '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764/%'
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,
Updated(mv) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/1434.M21,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 1742890060        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 1742890060        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1742890062
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 1742890062
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2, %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S'
Command: local: MV /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S        
DAEMON_MV /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, Locking MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 1
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
csync_redis_lock: OK MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 1742890063
SQL MOVE: UPDATE file set filename = concat('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S',substring(filename,96)) WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,' or filename like '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,/%'
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Updated(mv) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2, /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 1742890062        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1742890064
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 1742890064
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1742890064
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 1742890064
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST'
Command: local: MV /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST        
DAEMON_MV /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S Locking MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1
Locking 'MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
csync_redis_lock: OK MOVED_TO:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1742890066
SQL MOVE: UPDATE file set filename = concat('/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST',substring(filename,97)) WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S' or filename like '/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S/%'
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Updated(mv) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S user/group 1234 1000 dennis schafroth 33188 - 8 1591567200
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1234 1000 dennis schafroth 33188 - 8 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST user/group 1234 1000 dennis schafroth 33188 - 8 1591567200
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S '
Command: local: MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST is clean
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 1742890064        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 1742890064        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1742890066
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur - 1234 1000 dennis schafroth 16877 - 4096 1742890066
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur user/group 1234 1000 dennis schafroth 16877 - 4096 1742890066
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur - 1234 1000 dennis schafroth 16877 - 4096 1742890066
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST '
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.3 due  3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST.1'. rc = 0
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
csync_redis_lock: OK DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1742890066
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/1434.M21,S=6631,W=6764:2,ST  
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group'
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8

Sending sig_file for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S '
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.3 due  3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S.1'. rc = 0
Locking 'DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
csync_redis_lock: OK DELETE:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 1742890066
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S  
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir xxxxxxxxxx'
Command: local: SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890056        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir
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
Command: local: SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
Command: local: DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer'
csync_redis_lock: OK DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer 1742890066
6 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 6 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp/* ..
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp'
csync_redis_lock: OK DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 1742890066
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/tmp 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new/* ..
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new'
csync_redis_lock: OK DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 1742890066
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/new 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur/* ..
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur'
csync_redis_lock: OK DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 1742890066
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/cur 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur/* ..
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur'
csync_redis_lock: OK DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 1742890066
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash/cur 0
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash'
csync_redis_lock: OK DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 1742890066
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir/.Trash 0
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir'
csync_redis_lock: OK DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 1742890066
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/Maildir 0
Locking 'DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer'
csync_redis_lock: ERR DELETE,ISDIR:/export/home/dennis/Projects/csync2/csync2/test/test/peer -1
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 0
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 6 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
