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
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733504299 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 1733504299 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 1733504299 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 errno = 2 err = 
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 1733504299 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 1733504299 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 1733504299 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733504299 errno = 11 err = 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 1733504300 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 1733504299 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 1733504301 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 1733504301 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 1733504299 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 1733504299 errno = 11 err = 
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 1733504303 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
CONN local < OK (not_found).

CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 
check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  is clean
CONN local < OK 
Sending octet-stream of 12 bytes
CONN local < octet-stream 12

CONN local > 'octet-stream 10'
Got octet-stream 10
Content length in buffer: 'octet-stream 10' size: 10 rc: 0 (octet-stream)
Receiving 10 bytes (octet-stream)..
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej rc = 0 time: 1733504303 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 1733504303 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 1733504301 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr rc = 0 time: 1733504299 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  is clean
setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin rc = 0 time: 1733504304 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin
Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group'
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending octet-stream of 32 bytes
CONN local < octet-stream 32

CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej '
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej
Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej ...
Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.
daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  is clean
backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej 0 
Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.3 due  3 
Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.3 due to generation 3 
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.3'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.2'. rc = 0
renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej.1'. rc = 0
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/hej  
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local rc = 0 time: 1733504301 errno = 11 err = 
daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local
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
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/* ..
Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin/* ..
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local/sbin 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr/local 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/usr 0
Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'BYE'
CONN local < OK (cu_later).

goto nofork.
