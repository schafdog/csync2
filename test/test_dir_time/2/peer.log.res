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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/usr - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr
Running check for <TESTBASE>/test/peer/usr ...
Checking for modified files <TESTBASE>/test/peer/usr 
check_mod: No such file '<TESTBASE>/test/peer/usr' .
Checking for deleted files <TESTBASE>/test/peer/usr.
daemon_check_dirty: <TESTBASE>/test/peer/usr is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/usr'
mkdir <TESTBASE>/test/peer/usr rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/usr rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
Updated(mkdir) local:<TESTBASE>/test/peer/usr  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr/local
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
check_mod: No such file '<TESTBASE>/test/peer/usr/local' .
Checking for deleted files <TESTBASE>/test/peer/usr/local.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/usr/local'
mkdir <TESTBASE>/test/peer/usr/local rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr/local rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MKDIR <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
check_mod: No such file '<TESTBASE>/test/peer/usr/local/sbin' .
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
Locking 'CREATE,ISDIR:<TESTBASE>/test/peer/usr/local/sbin'
mkdir <TESTBASE>/test/peer/usr/local/sbin rc = 0 errno = 2 err = 
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mkdir) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr/local
Running check for <TESTBASE>/test/peer/usr/local ...
Checking for modified files <TESTBASE>/test/peer/usr/local 
Checking for deleted files <TESTBASE>/test/peer/usr/local.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local is clean
setown <TESTBASE>/test/peer/usr/local rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
Updated(mod) local:<TESTBASE>/test/peer/usr/local  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin/hej user/group 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
CONN local < OK (not_found).

CONN local > 'CREATE 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxxxx'
Command: local: CREATE <TESTBASE>/test/peer/usr/local/sbin/hej - 1234 1000 dennis schafroth 33188 - 4 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
check_mod: No such file '<TESTBASE>/test/peer/usr/local/sbin/hej' .
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej is clean
Locking 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/peer/usr/local/sbin/hej'
daemon CREATE <TESTBASE>/test/peer/usr/local/sbin/hej 1 0
CONN local < OK 
CONN local > 'octet-stream 4'
Got octet-stream 4
Content length in buffer: 'octet-stream 4' size: 4 rc: 0 (octet-stream)
settime <TESTBASE>/test/peer/usr/local/sbin/hej rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin/hej
Updated(create) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local/sbin xxxxxxxx        
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr xxxxxxxx        
settime <TESTBASE>/test/peer/usr rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr
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

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

CONN local < octet-stream 0

CONN local < OK (cmd_finished).

CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
Command: local: MOD <TESTBASE>/test/peer/usr/local/sbin - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxx
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin
Running check for <TESTBASE>/test/peer/usr/local/sbin ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin is clean
setown <TESTBASE>/test/peer/usr/local/sbin rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
setmod <TESTBASE>/test/peer/usr/local/sbin rc = 0 mod: 16877 errno = 0 err = 
settime <TESTBASE>/test/peer/usr/local/sbin rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local/sbin
Updated(mod) local:<TESTBASE>/test/peer/usr/local/sbin  
IDENT (cmd_finished).
CONN local < IDENT (cmd_finished).

CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej user/group'
Command: local: SIG <TESTBASE>/test/peer/usr/local/sbin/hej user/group        
CONN local < OK (data_follows).

Flags for gencheck: 48 
CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=4

Sending sig_file for <TESTBASE>/test/peer/usr/local/sbin/hej to peer.
CONN local < octet-stream 32

Signature has been sent to peer successfully.
CONN local < OK (cmd_finished).

CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local/sbin/hej '
Command: local: DEL <TESTBASE>/test/peer/usr/local/sbin/hej         
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej
Running check for <TESTBASE>/test/peer/usr/local/sbin/hej ...
Checking for modified files <TESTBASE>/test/peer/usr/local/sbin/hej 
Checking for deleted files <TESTBASE>/test/peer/usr/local/sbin/hej.
daemon_check_dirty: <TESTBASE>/test/peer/usr/local/sbin/hej is clean
backup <TESTBASE>/test/peer/usr/local/sbin/hej 0 
Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
check backup generation /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.3 due  3 
Remove backup /tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.3 due to generation 3 
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.2' to '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.3'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.1' to '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.2'. rc = 0
renaming backup files '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej' to '/tmp/csync2<TESTBASE>/test/peer/usr/local/sbin/hej.1'. rc = 0
Locking 'DELETE:<TESTBASE>/test/peer/usr/local/sbin/hej'
Updated(del) local:<TESTBASE>/test/peer/usr/local/sbin/hej  
CONN local < OK (cmd_finished).

CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/usr/local xxxxxxxxxx'
Command: local: SETTIME <TESTBASE>/test/peer/usr/local xxxxxxxx        
settime <TESTBASE>/test/peer/usr/local rc = 0 time: 0 errno = 0 err = 
daemon_file_update: UPDATE/INSERT into file filename: <TESTBASE>/test/peer/usr/local
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
Removing <TESTBASE>/test/peer/usr/* ..
Removing <TESTBASE>/test/peer/usr/local/* ..
Removing <TESTBASE>/test/peer/usr/local/sbin/* ..
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/usr/local/sbin'
Removed directory <TESTBASE>/test/peer/usr/local/sbin 0
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/usr/local'
Removed directory <TESTBASE>/test/peer/usr/local 0
Locking 'DELETE,ISDIR:<TESTBASE>/test/peer/usr'
Removed directory <TESTBASE>/test/peer/usr 0
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
