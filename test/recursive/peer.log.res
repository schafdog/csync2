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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 1638282875 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive - 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive - 1234 1000 dennis schafroth 16877 - 1638282875 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1 - 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 - 1234 1000 dennis schafroth 16877 - 1638282875 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2 - 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 - 1234 1000 dennis schafroth 16877 - 1638282875 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3 - 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 - 1234 1000 dennis schafroth 16877 - 1638282875 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 - 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 - 1234 1000 dennis schafroth 16877 - 1638282875 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 user/group 1234 1000 dennis schafroth 16877 - 1638282875 4096
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 - 1234 1000 dennis schafroth 16877 - 1638282875 4096'
CONN local > MKDIR /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 - 1234 1000 dennis schafroth 16877 - 1638282875 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c user/group 1234 1000 dennis schafroth 33188 - 1638282875 11'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c user/group 1234 1000 dennis schafroth 33188 - 1638282875 11
CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5/file.c - 1234 1000 dennis schafroth 33188 - 1638282875 11'
CONN local > PATCH /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c - 1234 1000 dennis schafroth 33188 - 1638282875 11
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c  is clean
CONN local < OK (send_data).

CONN local < octet-stream 12

CONN local > 'octet-stream 17'
Content length in buffer: 'octet-stream 17' size: 17 rc: 0 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c rc = 0 time: 1638282875 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4/5 1638282875'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 1638282875        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 rc = 0 time: 1638282875 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3/4 1638282875'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 1638282875        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 rc = 0 time: 1638282875 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2/3 1638282875'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 1638282875        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 rc = 0 time: 1638282875 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1/2 1638282875'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 1638282875        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 rc = 0 time: 1638282875 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive/1 1638282875'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 1638282875        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 rc = 0 time: 1638282875 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive 1638282875'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 1638282875        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive rc = 0 time: 1638282875 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1638282875'
CONN local > SETTIME /export/home/dennis/Projects/csync2/csync2/test/test/peer 1638282875        
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1638282875 errno = 11 err = 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 1638282877 4096'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group 1234 1000 dennis schafroth 16877 - 1638282877 4096
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 1638282877 4096'
CONN local > MOD /export/home/dennis/Projects/csync2/csync2/test/test/peer - 1234 1000 dennis schafroth 16877 - 1638282877 4096
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1638282877 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive user/group'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/recursive '
CONN local > DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 0 
6 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive': 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive): 6 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive. Errors 0
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/* ..
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/* ..
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/* ..
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/* ..
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/* ..
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/* ..
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o 
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o  is clean
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.o from file db.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~ ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~ 
No match. Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~  is clean
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/ignored.c~ from file db.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c  is clean
Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c.1'. rc = 0
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5/file.c from file db.
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4/5 0
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3/4 0
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2/3 0
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1/2 0
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive/1 0
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive): 6 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/recursive  
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
CONN local > SIG /export/home/dennis/Projects/csync2/csync2/test/test/peer user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
CONN local > DEL /export/home/dennis/Projects/csync2/csync2/test/test/peer         
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
0 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 0 
Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
Removing  /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
Removing directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 0 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
CONN local > BYE          
CONN local < OK (cu_later).

goto nofork.
