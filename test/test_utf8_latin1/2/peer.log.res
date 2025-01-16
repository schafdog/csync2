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
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  is clean
CONN local < OK 
Sending sig_file to peer..
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

Signature has been sent to peer successfully.
CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
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
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 user/group'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending sig_file to peer..
Sending octet-stream of 32 bytes
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/ÆØÅ%20Café.utf8 '
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8.1'. rc = 0
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/ÆØÅ Café.utf8  
CONN local < OK (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
