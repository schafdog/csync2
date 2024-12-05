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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1733439430
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 1733439430'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 4096 1733439430
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439430 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439430
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 1733439430'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1733439430
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439430 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file - 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file - 1234 1000 dennis schafroth 33188 - 4 1733439430
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file  is clean
CONN local < OK (send_data).

Sending octet-stream of 12 bytes
CONN local < octet-stream 12

CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file rc = 0 time: 1733439430 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file %25test%25/new/hardlinked '
CONN local > MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file  is clean
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new 1733439430'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1733439430        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439430 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439430'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439430        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439430 errno = 11 err = 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439431'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439431
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 1733439431'
CONN local > MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1733439431
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439431 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file %25test%25/new/hardlinked_2 '
CONN local > MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file  is clean
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file %25test%25/new/hardlinked_3 '
CONN local > MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file  is clean
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new 1733439431'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1733439431        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439431 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439430'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439430        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439430 errno = 11 err = 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 4096 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439432'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439432
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_3 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/new_file user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439432'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439432
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 1733439432'
CONN local > MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1733439432
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439432 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 %25test%25/new/hardlinked_4 '
CONN local > MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2  is clean
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 %25test%25/new/hardlinked_4 '
CONN local > MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2  is clean
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 user/group 1234 1000 dennis schafroth 33188 - 4 1733439430
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 %25test%25/new/hardlinked_5 '
CONN local > MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4  is clean
HARDLINK: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 user/group 1234 1000 dennis schafroth 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 1733439430
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 %25test%25/new/hardlinked_5 '
CONN local > MKHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5        
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4  is clean
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5
Updated(mkhardlink) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/hardlinked_5 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new 1733439432'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1733439432        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439432 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439430'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439430        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439430 errno = 11 err = 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439435'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new user/group 1234 1000 dennis schafroth 16877 - 4096 1733439435
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - 1234 1000 dennis schafroth 16877 - 4096 1733439435'
CONN local > MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer/new - 1234 1000 dennis schafroth 16877 - 4096 1733439435
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439435 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/was_hardlink user/group 1234 1000 dennis schafroth 33188 - 4 1733439433'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink user/group 1234 1000 dennis schafroth 33188 - 4 1733439433
CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/was_hardlink - 1234 1000 dennis schafroth 33188 - 4 1733439433'
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink - 1234 1000 dennis schafroth 33188 - 4 1733439433
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink  is clean
CONN local < OK (send_data).

Sending octet-stream of 12 bytes
CONN local < octet-stream 12

CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink rc = 0 time: 1733439433 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/new/was_hardlink  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new 1733439435'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/new 1733439435        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/new rc = 0 time: 1733439435 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1733439430'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1733439430        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733439430 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
CONN local < OK (cu_later).

goto nofork.
