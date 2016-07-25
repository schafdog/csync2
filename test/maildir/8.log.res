cmd u "update: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local
Config-File:   csync2_local.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/local'.
New host alias: peer: localhost 30860
New host alias: local: localhost 30860
New group: test
New group:host: test peer
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group: first
New group:host: first peer
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger peer
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older peer
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger peer
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller peer
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left peer
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right peer
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action peer
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
SQL: SELECT count(*) from file
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by op DESC, filename DESC
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1
SQL Query finished.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 71, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
uid dennis gid schafroth
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
CONN peer < MV %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'peer'
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'peer'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'peer'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'peer'
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN peer < SIG %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1000 1000 dennis schafroth 33188 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461647%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.6CgLbF
Running rs_sig_file() from librsync....
Reading signature size from peer....
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
Receiving signature 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 78, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
uid dennis gid schafroth
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN peer < SIG %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S user/group 1000 1000 dennis schafroth 33188 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
check hardlink OP HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN peer < SIG %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST user/group 1000 1000 dennis schafroth 33188 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461647%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.HPHp6f
Running rs_sig_file() from librsync....
Reading signature size from peer....
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
Receiving signature 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN peer < MKHARDLINK %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/' 78, 74.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461653%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #1).
>>> peer:  v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.AcdB1Q
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461653%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #1).
>>> peer:  v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.RzQlXr
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < MKDIR %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1469461646.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1469461646.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1469461652.
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1469461652.
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Closing db: 0xbb7360
Closed db: 0xbb7360
Finished succesfully.
