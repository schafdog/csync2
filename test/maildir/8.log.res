cmd u "update: Delete email: ln Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S. mv 1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST" local
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
Opening shared library libmysqlclient.dylib
Reading symbols from shared library libmysqlclient.so
SQL: SELECT count(*) from file
SQL Query finished.
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename DESC
SQL Query finished.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer > OK (cmd_finished).
CONN peer < HELLO local

CONN peer > OK (cmd_finished).
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 20 dennis staff 16877 
CONN peer > OK (data_follows).
CONN peer > v2%3Amtime=1435222168%3Amode=16877%3Auser=dennis%3Agroup=staff%3Atype=dir
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
File is different on peer (cktxt char #-1).
>>> PEER:  v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir
>>> LOCAL: v2:mtime=1435222174:mode=16877:user=dennis:group=staff:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127265 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127265 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
0 files with same dev:inode (16777223:80127265) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL Query finished.
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1000 20 dennis staff 16877 
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' 78, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 74.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' NEW ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S user/group 1000 20 dennis staff 33188 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222169:mode=33188:uid=1000:gid=20:type=reg:size=8
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S', 1 [regular file])
Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Signature size differs: local=32, peer=0
Receiving signature 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127285 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127285 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' 
3 files with same dev:inode (16777223:80127285) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8 
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST to /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
Unable to MOVE/LINK: both NEW
check_link_move: Other file not found. Possible MOVE operation: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
csync_cmpchecktxt A: v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8 
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S to /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
check move: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 
 CONN peer < MV %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S 
CONN peer > OK (cmd_finished).
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
Delete moved file from dirty SQL: DELETE FROM dirty WHERE (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S') AND peername = 'peer'
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' AND peername = 'peer'
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/' 78, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 20 dennis staff 16877 
CONN peer > OK (data_follows).
CONN peer > v2%3Amtime=1435222175%3Amode=16877%3Auser=dennis%3Agroup=staff%3Atype=dir
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1435222175:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222175:mode=16877:user=dennis:group=staff:type=dir 
File is different on peer (cktxt char #1).
>>> PEER:  v2:mtime=1435222175:mode=16877:user=dennis:group=staff:type=dir
>>> LOCAL: v2:mtime=1435222174:mode=16877:user=dennis:group=staff:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127261 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127261 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
0 files with same dev:inode (16777223:80127261) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL Query finished.
CONN peer < MKDIR %25test%25/Maildir/cur - 1000 20 dennis staff 16877 
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S RM 0
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' NEW ''
CONN peer < SIG %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,ST user/group 1000 20 dennis staff 33188 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222169:mode=33188:uid=1000:gid=20:type=reg:size=8
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST', 1 [regular file])
Opening basis_file and sig_file..
Running rs_sig_file() from librsync....
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Signature size differs: local=32, peer=0
Receiving signature 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127285 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127285 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' 
1 files with same dev:inode (16777223:80127285) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8 
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S to /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
check hardlink: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
CONN peer < MKHARDLINK %25test%25/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,ST 
CONN peer > OK (cmd_finished).
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' AND peername = 'peer'
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
CONN peer < SIG %25test%25/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764%3A2,S 
CONN peer > OK (not_found).
CONN peer > ---
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S is already up to date on peer. 
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1435222174.
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > OK (cmd_finished).
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1435222168.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > OK (cmd_finished).
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1435222174.
CONN peer < SETTIME %25test%25/Maildir/.Trash/cur 
CONN peer > OK (cmd_finished).
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1435222168.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > OK (cmd_finished).
CONN peer < BYE

CONN peer > OK (cu_later).
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
