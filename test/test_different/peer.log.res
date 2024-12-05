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
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 1733439435'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1733439435
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 1733439435'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1733439435
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439435 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
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
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 1733439437'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1733439437
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different user/group 1234 1000 dennis schafroth 33188 - 4 1733439437'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/different user/group 1234 1000 dennis schafroth 33188 - 4 1733439437
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different - 1234 1000 dennis schafroth 33188 - 4 1733439437'
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different - 1234 1000 dennis schafroth 33188 - 4 1733439437
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/peer/different /export/home/dennis/Projects/csync2/csync2/test/test/peer/different
mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/different rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different is just marked dirty
daemon_check_dirty: peer operation  local /export/home/dennis/Projects/csync2/csync2/test/test/peer/different NEW
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/different is dirty here: NEW 2
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different)
CONN local < File also marked dirty here! 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439437'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439437        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439437 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
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
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different user/group 1234 1000 dennis schafroth 33188 - 4 1733439437'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/different user/group 1234 1000 dennis schafroth 33188 - 4 1733439437
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different - 1234 1000 dennis schafroth 33188 - 4 1733439437'
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different - 1234 1000 dennis schafroth 33188 - 4 1733439437
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different  is clean
daemon_check_dirty: peer operation  local /export/home/dennis/Projects/csync2/csync2/test/test/peer/different NEW
File /export/home/dennis/Projects/csync2/csync2/test/test/peer/different is dirty here: NEW 2
ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/different)
CONN local < File also marked dirty here! 
CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439437'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439437        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439437 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
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
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'FLUSH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different'
CONN local > FLUSH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different  is clean
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different user/group 1234 1000 dennis schafroth 33188 - 4 1733439437'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/different user/group 1234 1000 dennis schafroth 33188 - 4 1733439437
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/different - 1234 1000 dennis schafroth 33188 - 4 1733439437'
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/different - 1234 1000 dennis schafroth 33188 - 4 1733439437
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/different ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/different.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/different 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/different.1'. rc = 0
CONN local < OK (send_data).

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/different rc = 0 time: 1733439437 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/different
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/different  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439437'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439437        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439437 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
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
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 1733439438'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1733439438
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 1733439438'
CONN local > MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1733439438
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439438 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 1733439438'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp user/group 1234 1000 dennis schafroth 16877 - 4096 1733439438
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/tmp - 1234 1000 dennis schafroth 16877 - 4096 1733439438'
CONN local > MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp - 1234 1000 dennis schafroth 16877 - 4096 1733439438
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp
mark other operation: 'MKDIR' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp rows matched: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp is just marked dirty
daemon_check_dirty: peer operation  local /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp MKDIR
Ignoring dirty directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp rc = 0 time: 1733439438 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/tmp  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439438'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439438        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439438 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
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
CONN (null) > DEBUG          
DEBUG from (null) 2
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: HELLO local
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
CONN local < OK (not_found).

CONN local > 'BYE'
CONN local > BYE          
CONN local < OK (cu_later).

goto nofork.
