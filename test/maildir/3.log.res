cmd x "New Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 with transit in tmp " local
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
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test 
SQL: SELECT filename, checktxt, device, inode, mode from file  where (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename > '/export/home/dennis/Projects/csync2/csync2/test/test/' and filename < '/export/home/dennis/Projects/csync2/csync2/test/test0') ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
csync_cmpchecktxt A: v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp has changed: 
    v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir 
DB: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir MOD
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127263, NULL, 16877, 68)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 16777223 AND inode  = 80127263 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127263, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 16777223 AND inode  = 80127263 AND peername = 'other' 
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)' 
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127263, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
csync_cmpchecktxt A: v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new has changed: 
    v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir 
DB: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir MOD
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127262, NULL, 16877, 102)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 16777223 AND inode  = 80127262 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127262, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 16777223 AND inode  = 80127262 AND peername = 'other' 
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)' 
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127262, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764', 'v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8', 16777223, 80127285, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764') AND device = 16777223 AND inode  = 80127285 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764', 0, 'local', 'peer', 'NEW', 'v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8', 16777223, 80127285, NULL, 1, 33188)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764') AND device = 16777223 AND inode  = 80127285 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764', 0, 'local', 'other', 'NEW', 'v2:mtime=1435222169:mode=33188:user=dennis:group=staff:type=reg:size=8', 16777223, 80127285, NULL, 1, 33188)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
SQL: SELECT peername, device, inode, checktxt, count(*) from dirty group by 1,2,3,4 having count(*) > 1
0 files with multiple dev:inode.
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/new user/group 1000 20 dennis staff 16877 
CONN peer > OK (data_follows).
CONN peer > v2%3Amtime=1435222168%3Amode=16877%3Auser=dennis%3Agroup=staff%3Atype=dir
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
File is different on peer (cktxt char #-1).
>>> PEER:  v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir
>>> LOCAL: v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127262 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127262 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
0 files with same dev:inode (16777223:80127262) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL Query finished.
CONN peer < MKDIR %25test%25/Maildir/new - 1000 20 dennis staff 16877 
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' NEW ''
CONN peer < SIG %25test%25/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 user/group 1000 20 dennis staff 33188 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222169:mode=33188:uid=1000:gid=20:type=reg:size=8
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764', 1 [regular file])
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
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127285 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127285 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' 
0 files with same dev:inode (16777223:80127285) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764
SQL Query finished.
CONN peer < PATCH %25test%25/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764 - 1000 20 dennis staff 33188 
CONN peer > OK (send_data).
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764')
Receiving sig_file from peer..
CONN peer > octet-stream 12
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 
Receiving 12 bytes ..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 15 bytes
CONN peer < octet-stream 15

Delta has been created successfully.
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' MOD_DIR ''
CONN peer < SIG %25test%25/Maildir/tmp user/group 1000 20 dennis staff 16877 
CONN peer > OK (data_follows).
CONN peer > v2%3Amtime=1435222168%3Amode=16877%3Auser=dennis%3Agroup=staff%3Atype=dir
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
csync_cmpchecktxt B: v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir 
File is different on peer (cktxt char #-1).
>>> PEER:  v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir
>>> LOCAL: v2:mtime=1435222170:mode=16877:user=dennis:group=staff:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127263 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127263 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
0 files with same dev:inode (16777223:80127263) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL Query finished.
CONN peer < MKDIR %25test%25/Maildir/tmp - 1000 20 dennis staff 16877 
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1435222170.
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > OK (cmd_finished).
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1435222168.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > OK (cmd_finished).
CONN peer < BYE

CONN peer > OK (cu_later).
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
