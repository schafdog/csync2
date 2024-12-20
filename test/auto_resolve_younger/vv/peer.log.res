Config-File:   csync2_mysql_peer.cfg
Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Csync2 daemon running. Waiting for connections.
<3094163> New connection from 127.0.0.1:38918.
<3094163> CONN (null) > 'CONFIG '
<3094163> Config-File:   csync2_mysql_peer.cfg
<3094163> My hostname is peer.
<3094163> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094163> DB Version:    2
<3094163> IP Version:    IPv4
<3094163> Default encoding utf8mb4
<3094163> db_schema_version: 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'DEBUG 2'
<3094163> DEBUG from (null) 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'HELLO local'
<3094163> Command: HELLO local
<3094163> DAEMON is_ping: 0 fork: local . pid: -1
<3094163> HELLO from local. Response: OK
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> CONN local < OK (not_found).

<3094163> CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
<3094163> check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
<3094163> mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
<3094163> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094163> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094163> Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> CONN local < OK (not_found).

<3094163> CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
<3094163> check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto' .
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
<3094163> mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 errno = 2 err = 
<3094163> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094163> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 0 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094163> Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger failed stat
<3094163> CONN local < OK (not_found).

<3094163> CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger failed stat
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
<3094163> check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger' .
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  is clean
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger failed stat
<3094163> mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 errno = 2 err = 
<3094163> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094163> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 mod: 16877 errno = 0 err = 
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 11 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 11 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'BYE'
<3094163> CONN local < OK (cu_later).

<3094163> goto nofork.
Csync2 daemon running. Waiting for connections.
<3094163> New connection from 127.0.0.1:38930.
<3094163> CONN (null) > 'CONFIG '
<3094163> Config-File:   csync2_mysql_peer.cfg
<3094163> My hostname is peer.
<3094163> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094163> DB Version:    2
<3094163> IP Version:    IPv4
<3094163> Default encoding utf8mb4
<3094163> db_schema_version: 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'DEBUG 2'
<3094163> DEBUG from (null) 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'HELLO local'
<3094163> Command: HELLO local
<3094163> DAEMON is_ping: 0 fork: local . pid: -1
<3094163> HELLO from local. Response: OK
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 12 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> CONN local < OK (data_follows).

<3094163> Flags for gencheck: 48 
<3094163> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

<3094163> Sending sig_file to peer..
<3094163> Sending octet-stream of 32 bytes
<3094163> CONN local < octet-stream 32

<3094163> Signature has been sent to peer successfully.
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 12 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
<3094163> New file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
<3094163> mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' '-'.
<3094163> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest rows matched: 1
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest is just marked dirty
<3094163> daemon_check_dirty: peer operation  local /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest NEW
<3094163> File /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest is dirty here: NEW 2
<3094163> ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest)
<3094163> CONN local < File also marked dirty here! 
<3094163> CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> CONN local < OK (data_follows).

<3094163> CONN local < 1623103200

<3094163> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 0 errno = 11 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'BYE'
<3094163> CONN local < OK (cu_later).

<3094163> goto nofork.
Csync2 daemon running. Waiting for connections.
<3094163> New connection from 127.0.0.1:38932.
<3094163> CONN (null) > 'CONFIG '
<3094163> Config-File:   csync2_mysql_peer.cfg
<3094163> My hostname is peer.
<3094163> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094163> DB Version:    2
<3094163> IP Version:    IPv4
<3094163> Default encoding utf8mb4
<3094163> db_schema_version: 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'DEBUG 2'
<3094163> DEBUG from (null) 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'HELLO local'
<3094163> Command: HELLO local
<3094163> DAEMON is_ping: 0 fork: local . pid: -1
<3094163> HELLO from local. Response: OK
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> CONN local < OK (data_follows).

<3094163> Flags for gencheck: 48 
<3094163> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094163> CONN local < octet-stream 0

<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
<3094163> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer rows matched: 1
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
<3094163> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094163> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094163> Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> CONN local < OK (data_follows).

<3094163> Flags for gencheck: 48 
<3094163> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094163> CONN local < octet-stream 0

<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
<3094163> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rows matched: 1
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
<3094163> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094163> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 0 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094163> Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
<3094163> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
<3094163> CONN local < OK (data_follows).

<3094163> Flags for gencheck: 48 
<3094163> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094163> CONN local < octet-stream 0

<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  is clean
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolve
<3094163> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger won auto resolved. clear dirty
<3094163> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094163> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 mod: 16877 errno = 0 err = 
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 0 errno = 0 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
<3094163> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
<3094163> CONN local < OK (data_follows).

<3094163> Flags for gencheck: 48 
<3094163> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

<3094163> Sending sig_file to peer..
<3094163> Sending octet-stream of 32 bytes
<3094163> CONN local < octet-stream 32

<3094163> Signature has been sent to peer successfully.
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger/local_oldest - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest  is clean
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolve
<3094163> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest won auto resolved. clear dirty
<3094163> backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 0 
<3094163> Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
<3094163> Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
<3094163> check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due  3 
<3094163> Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due to generation 3 
<3094163> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3'. rc = 0
<3094163> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2'. rc = 0
<3094163> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1'. rc = 0
<3094163> CONN local < OK 
<3094163> Sending sig_file to peer..
<3094163> Sending octet-stream of 32 bytes
<3094163> CONN local < octet-stream 32

<3094163> Signature has been sent to peer successfully.
<3094163> CONN local > 'octet-stream 20'
<3094163> Got octet-stream 20
<3094163> Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
<3094163> Receiving 20 bytes (octet-stream)..
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest rc = 0 time: 0 errno = 0 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/younger xxxxxxxxxx'
<3094163> daemon: Auto resolve method YOUNGER 2 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger rc = 0 time: 0 errno = 11 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 11 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
<3094163> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 11 err = 
<3094163> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'BYE'
<3094163> CONN local < OK (cu_later).

<3094163> goto nofork.
Csync2 daemon running. Waiting for connections.
<3094163> New connection from 127.0.0.1:38940.
<3094163> CONN (null) > 'CONFIG '
<3094163> Config-File:   csync2_mysql_peer.cfg
<3094163> My hostname is peer.
<3094163> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094163> DB Version:    2
<3094163> IP Version:    IPv4
<3094163> Default encoding utf8mb4
<3094163> db_schema_version: 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'DEBUG 2'
<3094163> DEBUG from (null) 2
<3094163> CONN (null) < OK (cmd_finished).

<3094163> CONN (null) > 'HELLO local'
<3094163> Command: HELLO local
<3094163> DAEMON is_ping: 0 fork: local . pid: -1
<3094163> HELLO from local. Response: OK
<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
<3094163> CONN local < OK (data_follows).

<3094163> Flags for gencheck: 48 
<3094163> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094163> CONN local < octet-stream 0

<3094163> CONN local < OK (cmd_finished).

<3094163> CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
<3094163> backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
<3094163> 3 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
<3094163> Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
<3094163> Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
<3094163> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
<3094163> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/* ..
<3094163> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/* ..
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest ...
<3094163> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 
<3094163> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.
<3094163> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest  is clean
<3094163> Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest
<3094163> backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest 0 
<3094163> Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
<3094163> Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
<3094163> check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due  3 
<3094163> Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3 due to generation 3 
<3094163> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.3'. rc = 0
<3094163> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.2'. rc = 0
<3094163> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest.1'. rc = 0
<3094163> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger/local_oldest from file db.
<3094163> Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/younger 0
<3094163> Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 0
<3094163> Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
<3094163> Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
<3094163> Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
<3094163> Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
<3094163> IDENT (cmd_finished).
<3094163> CONN local < IDENT (cmd_finished).

<3094163> CONN local > 'BYE'
<3094163> CONN local < OK (cu_later).

<3094163> goto nofork.
