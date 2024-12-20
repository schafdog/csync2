Config-File:   csync2_mysql_peer.cfg
Found my alias peer localhost 30861 
Binding to 30861 IPv0 
Csync2 daemon running. Waiting for connections.
<3094481> New connection from 127.0.0.1:38954.
<3094481> CONN (null) > 'CONFIG '
<3094481> Config-File:   csync2_mysql_peer.cfg
<3094481> My hostname is peer.
<3094481> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094481> DB Version:    2
<3094481> IP Version:    IPv4
<3094481> Default encoding utf8mb4
<3094481> db_schema_version: 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'DEBUG 2'
<3094481> DEBUG from (null) 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'HELLO local'
<3094481> Command: HELLO local
<3094481> DAEMON is_ping: 0 fork: local . pid: -1
<3094481> HELLO from local. Response: OK
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> CONN local < OK (not_found).

<3094481> CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
<3094481> check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer' .
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
<3094481> mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 errno = 2 err = 
<3094481> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094481> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094481> Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> CONN local < OK (not_found).

<3094481> CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
<3094481> check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto' .
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
<3094481> mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 errno = 2 err = 
<3094481> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094481> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 0 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094481> Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older failed stat
<3094481> CONN local < OK (not_found).

<3094481> CONN local > 'MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older failed stat
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 
<3094481> check_mod: No such file '/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older' .
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  is clean
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> daemon_check_auto_resolve: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older failed stat
<3094481> mkdir /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 errno = 2 err = 
<3094481> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094481> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 mod: 16877 errno = 0 err = 
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> Updated(mkdir) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 11 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 11 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'BYE'
<3094481> CONN local < OK (cu_later).

<3094481> goto nofork.
Csync2 daemon running. Waiting for connections.
<3094481> New connection from 127.0.0.1:38960.
<3094481> CONN (null) > 'CONFIG '
<3094481> Config-File:   csync2_mysql_peer.cfg
<3094481> My hostname is peer.
<3094481> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094481> DB Version:    2
<3094481> IP Version:    IPv4
<3094481> Default encoding utf8mb4
<3094481> db_schema_version: 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'DEBUG 2'
<3094481> DEBUG from (null) 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'HELLO local'
<3094481> Command: HELLO local
<3094481> DAEMON is_ping: 0 fork: local . pid: -1
<3094481> HELLO from local. Response: OK
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> CONN local < OK (data_follows).

<3094481> Flags for gencheck: 48 
<3094481> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=11

<3094481> Sending sig_file to peer..
<3094481> Sending octet-stream of 32 bytes
<3094481> CONN local < octet-stream 32

<3094481> Signature has been sent to peer successfully.
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
<3094481> New file: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> mark other operation: 'NEW' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
<3094481> mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
<3094481> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both rows matched: 1
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is just marked dirty
<3094481> daemon_check_dirty: peer operation  local /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both NEW
<3094481> File /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is dirty here: NEW 2
<3094481> ERROR: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both)
<3094481> CONN local < File also marked dirty here! 
<3094481> CONN local > 'GETTM 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
<3094481> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
<3094481> CONN local < OK (data_follows).

<3094481> CONN local < 1591639200

<3094481> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
<3094481> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 time: 0 errno = 11 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'BYE'
<3094481> CONN local < OK (cu_later).

<3094481> goto nofork.
Csync2 daemon running. Waiting for connections.
<3094481> New connection from 127.0.0.1:38966.
<3094481> CONN (null) > 'CONFIG '
<3094481> Config-File:   csync2_mysql_peer.cfg
<3094481> My hostname is peer.
<3094481> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094481> DB Version:    2
<3094481> IP Version:    IPv4
<3094481> Default encoding utf8mb4
<3094481> db_schema_version: 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'DEBUG 2'
<3094481> DEBUG from (null) 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'HELLO local'
<3094481> Command: HELLO local
<3094481> DAEMON is_ping: 0 fork: local . pid: -1
<3094481> HELLO from local. Response: OK
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> CONN local < OK (data_follows).

<3094481> Flags for gencheck: 48 
<3094481> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094481> CONN local < octet-stream 0

<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
<3094481> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer rows matched: 1
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
<3094481> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094481> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 mod: 16877 errno = 0 err = 
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 0 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094481> Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> CONN local < OK (data_follows).

<3094481> Flags for gencheck: 48 
<3094481> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094481> CONN local < octet-stream 0

<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 
<3094481> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rows matched: 1
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  is clean
<3094481> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094481> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 mod: 16877 errno = 0 err = 
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 0 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094481> Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older user/group 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
<3094481> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
<3094481> CONN local < OK (data_follows).

<3094481> Flags for gencheck: 48 
<3094481> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094481> CONN local < octet-stream 0

<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'MOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older - 1234 1000 dennis schafroth 16877 - 4096 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 
<3094481> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rows matched: 1
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  is clean
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
<3094481> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
<3094481> setown /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 uid: 1234 gid: 1000 errno = 0 err = 
<3094481> setmod /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 mod: 16877 errno = 0 err = 
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 time: 0 errno = 0 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> Updated(mod) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both user/group 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
<3094481> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
<3094481> CONN local < OK (data_follows).

<3094481> Flags for gencheck: 48 
<3094481> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=13

<3094481> Sending sig_file to peer..
<3094481> Sending octet-stream of 32 bytes
<3094481> CONN local < octet-stream 32

<3094481> Signature has been sent to peer successfully.
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older/update_both - 1234 1000 dennis schafroth 33188 - 14 xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
<3094481> mark other operation: 'MOD' 'local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
<3094481> mark other operation: 'MOD' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' '-'.
<3094481> Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both rows matched: 1
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both is just marked dirty
<3094481> Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve.
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolve
<3094481> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both won auto resolved. clear dirty
<3094481> backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 0 
<3094481> Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
<3094481> Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
<3094481> check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due  3 
<3094481> Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due to generation 3 
<3094481> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3'. rc = 0
<3094481> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2'. rc = 0
<3094481> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1'. rc = 0
<3094481> CONN local < OK 
<3094481> Sending sig_file to peer..
<3094481> Sending octet-stream of 32 bytes
<3094481> CONN local < octet-stream 32

<3094481> Signature has been sent to peer successfully.
<3094481> CONN local > 'octet-stream 20'
<3094481> Got octet-stream 20
<3094481> Content length in buffer: 'octet-stream 20' size: 20 rc: 0 (octet-stream)
<3094481> Receiving 20 bytes (octet-stream)..
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both rc = 0 time: 0 errno = 0 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> Updated(patch) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto/older xxxxxxxxxx'
<3094481> daemon: Auto resolve method OLDER 3 for local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> check_auto_resolve: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolve
<3094481> daemon dispatch: Remote local:/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older won auto resolved. clear dirty
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older rc = 0 time: 0 errno = 11 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/auto xxxxxxxxxx'
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto rc = 0 time: 0 errno = 11 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 xxxxxxxxxx'
<3094481> settime /export/home/dennis/Projects/csync2/csync2/test/test/peer rc = 0 time: 0 errno = 11 err = 
<3094481> daemon_file_update: UPDATE/INSERT into file filename: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'BYE'
<3094481> CONN local < OK (cu_later).

<3094481> goto nofork.
Csync2 daemon running. Waiting for connections.
<3094481> New connection from 127.0.0.1:38976.
<3094481> CONN (null) > 'CONFIG '
<3094481> Config-File:   csync2_mysql_peer.cfg
<3094481> My hostname is peer.
<3094481> Database File: mysql://csync2_peer:csync2_peer@127.0.0.1/csync2_peer
<3094481> DB Version:    2
<3094481> IP Version:    IPv4
<3094481> Default encoding utf8mb4
<3094481> db_schema_version: 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'DEBUG 2'
<3094481> DEBUG from (null) 2
<3094481> CONN (null) < OK (cmd_finished).

<3094481> CONN (null) > 'HELLO local'
<3094481> Command: HELLO local
<3094481> DAEMON is_ping: 0 fork: local . pid: -1
<3094481> HELLO from local. Response: OK
<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group'
<3094481> CONN local < OK (data_follows).

<3094481> Flags for gencheck: 48 
<3094481> CONN local < v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir

<3094481> CONN local < octet-stream 0

<3094481> CONN local < OK (cmd_finished).

<3094481> CONN local > 'DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 '
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer 
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer  is clean
<3094481> backup /export/home/dennis/Projects/csync2/csync2/test/test/peer 0 
<3094481> 3 files within directory '/export/home/dennis/Projects/csync2/csync2/test/test/peer': 
<3094481> Deleting recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 
<3094481> Calling csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. Errors 0
<3094481> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/* ..
<3094481> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/* ..
<3094481> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/* ..
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> Running check for /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both ...
<3094481> Checking for modified files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 
<3094481> Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.
<3094481> daemon_check_dirty: /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both  is clean
<3094481> Removing file /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both
<3094481> backup /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both 0 
<3094481> Changing owner of /tmp/csync2/export to user 0 and group 0, rc= -1 
<3094481> Changing owner of /tmp/csync2/export/home to user 0 and group 0, rc= -1 
<3094481> check backup generation /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due  3 
<3094481> Remove backup /tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3 due to generation 3 
<3094481> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.3'. rc = 0
<3094481> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.2'. rc = 0
<3094481> renaming backup files '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both' to '/tmp/csync2/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both.1'. rc = 0
<3094481> Removing /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older/update_both from file db.
<3094481> Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto/older 0
<3094481> Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer/auto 0
<3094481> Removed directory /export/home/dennis/Projects/csync2/csync2/test/test/peer 0
<3094481> Called csync_rmdir_recursive local:/export/home/dennis/Projects/csync2/csync2/test/test/peer. RC: 1 11
<3094481> Deleted recursive from clean directory (/export/home/dennis/Projects/csync2/csync2/test/test/peer): 3 1 
<3094481> Updated(del) local:/export/home/dennis/Projects/csync2/csync2/test/test/peer  
<3094481> IDENT (cmd_finished).
<3094481> CONN local < IDENT (cmd_finished).

<3094481> CONN local > 'BYE'
<3094481> CONN local < OK (cu_later).

<3094481> goto nofork.
