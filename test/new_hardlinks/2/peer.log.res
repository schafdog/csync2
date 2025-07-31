Config-File:   csync2_pgsql_peer.cfg
Found my alias peer localhost 30861
Binding to 30861 IPv2
CONN (null) > 'CONFIG '
Config-File:   csync2_pgsql_peer.cfg
My hostname is peer.
Database File: pgsql://csync2:csync238@localhost/csync2_peer
DB Version:    2
IP Version:    IPv4
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer
Running check for <TESTBASE>/test/peer ...
Checking for modified files <TESTBASE>/test/peer 
check_mod: No such file '<TESTBASE>/test/peer' .
Checking for deleted files <TESTBASE>/test/peer.
daemon_check_dirty: <TESTBASE>/test/peer is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer'
mkdir <TESTBASE>/test/peer rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer  
Daemon end_command <TESTBASE>/test/peer MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
check_mod: No such file '<TESTBASE>/test/peer/new' .
Checking for deleted files <TESTBASE>/test/peer/new.
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/new'
mkdir <TESTBASE>/test/peer/new rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Updated(mkdir) local:<TESTBASE>/test/peer/new  
Daemon end_command <TESTBASE>/test/peer/new MKDIR 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/new/new_file - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new/new_file
Running check for <TESTBASE>/test/peer/new/new_file ...
Checking for modified files <TESTBASE>/test/peer/new/new_file 
check_mod: No such file '<TESTBASE>/test/peer/new/new_file' .
Checking for deleted files <TESTBASE>/test/peer/new/new_file.
daemon_check_dirty: <TESTBASE>/test/peer/new/new_file is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new/new_file'
daemon CREATE <TESTBASE>/test/peer/new/new_file 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/new/new_file rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/new/new_file  
Daemon end_command <TESTBASE>/test/peer/new/new_file CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked %25test%25/new/new_file '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked <TESTBASE>/test/peer/new/new_file        
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked
Running check for <TESTBASE>/test/peer/new/hardlinked ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked 
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked.
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked is clean
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked <TESTBASE>/test/peer/new/new_file 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
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
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/new  
Daemon end_command <TESTBASE>/test/peer/new MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/hardlinked to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/hardlinked SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 %25test%25/new/hardlinked '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/hardlinked        
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_2
Running check for <TESTBASE>/test/peer/new/hardlinked_2 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_2 
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_2' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_2.
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_2 is clean
HARDLINK: <TESTBASE>/test/peer/new/hardlinked -> <TESTBASE>/test/peer/new/hardlinked_2 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_2 <TESTBASE>/test/peer/new/hardlinked 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_2 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/hardlinked to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/hardlinked SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 %25test%25/new/hardlinked '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/hardlinked        
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_3
Running check for <TESTBASE>/test/peer/new/hardlinked_3 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_3 
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_3' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_3.
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_3 is clean
HARDLINK: <TESTBASE>/test/peer/new/hardlinked -> <TESTBASE>/test/peer/new/hardlinked_3 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_3 <TESTBASE>/test/peer/new/hardlinked 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_3 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
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
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/hardlinked to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/hardlinked SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_2 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/hardlinked_2 to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_2 SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_3 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/hardlinked_3 to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_3 SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
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
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/new  
Daemon end_command <TESTBASE>/test/peer/new MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_4 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_4 %25test%25/new/new_file '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/new_file        
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_4
Running check for <TESTBASE>/test/peer/new/hardlinked_4 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_4 
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_4' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_4.
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_4 is clean
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_4 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_4 <TESTBASE>/test/peer/new/new_file 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_4 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/hardlinked_5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/new_file user/group <UID> <GID> <USER> <GROUP> 33188 32a0617aab4c9fe725f1b5bc441291180ad25b73 4 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=<USER>%3Agroup=<GROUP>%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/new/new_file to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
Daemon end_command <TESTBASE>/test/peer/new/new_file SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked_5 %25test%25/new/new_file '
Command: local: MKHARDLINK <TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/new_file        
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_5
Running check for <TESTBASE>/test/peer/new/hardlinked_5 ...
Checking for modified files <TESTBASE>/test/peer/new/hardlinked_5 
check_mod: No such file '<TESTBASE>/test/peer/new/hardlinked_5' .
Checking for deleted files <TESTBASE>/test/peer/new/hardlinked_5.
daemon_check_dirty: <TESTBASE>/test/peer/new/hardlinked_5 is clean
HARDLINK: <TESTBASE>/test/peer/new/new_file -> <TESTBASE>/test/peer/new/hardlinked_5 
Updated(mkhardlink) local:<TESTBASE>/test/peer/new/hardlinked_5 <TESTBASE>/test/peer/new/new_file 
Daemon end_command <TESTBASE>/test/peer/new/hardlinked_5 MKHARDLINK 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
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
CONN (null) < OK (cmd_finished).

CONN (null) > 'DEBUG 2'
Command: (null): DEBUG          
DEBUG from (null) 2
Daemon end_command  DEBUG 0 
CONN (null) < OK (cmd_finished).

CONN (null) > 'HELLO local'
Command: local HELLO
DAEMON is_ping: 0 fork: local . pid: -1
HELLO from local. Response: OK
Daemon end_command  HELLO 3 
CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir

CONN local < octet-stream 0

Daemon end_command <TESTBASE>/test/peer/new SIG 0 
CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new
Running check for <TESTBASE>/test/peer/new ...
Checking for modified files <TESTBASE>/test/peer/new 
Checking for deleted files <TESTBASE>/test/peer/new.
daemon_check_dirty: <TESTBASE>/test/peer/new is clean
setown <TESTBASE>/test/peer/new rc = 0 gid: <UID> gid: <GID> errno = 0 err = 
setmod <TESTBASE>/test/peer/new rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Updated(mod) local:<TESTBASE>/test/peer/new  
Daemon end_command <TESTBASE>/test/peer/new MOD 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/was_hardlink user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/new/was_hardlink user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/was_hardlink - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/new/was_hardlink - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/new/was_hardlink
Running check for <TESTBASE>/test/peer/new/was_hardlink ...
Checking for modified files <TESTBASE>/test/peer/new/was_hardlink 
check_mod: No such file '<TESTBASE>/test/peer/new/was_hardlink' .
Checking for deleted files <TESTBASE>/test/peer/new/was_hardlink.
daemon_check_dirty: <TESTBASE>/test/peer/new/was_hardlink is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/new/was_hardlink'
daemon CREATE <TESTBASE>/test/peer/new/was_hardlink 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/new/was_hardlink rc = 0 time: 0 errno = 0 err = 
Updated(create) local:<TESTBASE>/test/peer/new/was_hardlink  
Daemon end_command <TESTBASE>/test/peer/new/was_hardlink CREATE 1 
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/new xxxxxxxx        
settime <TESTBASE>/test/peer/new rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer/new SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer xxxxxxxx        
settime <TESTBASE>/test/peer rc = 0 time: 0 errno = 0 err = 
Daemon end_command <TESTBASE>/test/peer SETTIME 0 
CONN local < OK (cmd_finished).

CONN local > 'BYE'
Command: local: BYE          
CONN local < OK (cu_later).

goto nofork.
