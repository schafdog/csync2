cmd x "move Maildir/new/1434.M21,S=6631,W=6764 Maildir/cur/1434.M21,S=6631,W=6764:2," local
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
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
csync_cmpchecktxt A: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
csync_cmpchecktxt A: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
csync_cmpchecktxt A: v2:mtime=1468737555:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737555:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
csync_cmpchecktxt A: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new has changed: 
    v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1468737555:mode=16877:user=dennis:group=schafroth:type=dir MOD
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 544558154 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 544558154, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 544558154 AND peername = 'other' ORDER BY timestamp 
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 544558154, NULL, 1, 16877)
Update file entry SQL: UPDATE file set checktxt='v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir', device=2065, inode=544558154,                 digest=NULL, mode=16877, mtime=1468737556, size=6 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
csync_cmpchecktxt A: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur has changed: 
    v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir MOD
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 278910705 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910705, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 278910705 AND peername = 'other' ORDER BY timestamp 
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910705, NULL, 1, 16877)
Update file entry SQL: UPDATE file set checktxt='v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir', device=2065, inode=278910705,                 digest=NULL, mode=16877, mtime=1468737556, size=38 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL Query finished.
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL:  SELECT filename, checktxt, digest FROM file  WHERE      device = 2065  AND inode = 805562158  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' AND checktxt  = 'v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8'  AND digest    = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981' 
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
1 files with same dev:inode (2065:805562158) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
SQL Query finished.
check same file (64) /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
Delete moved file SQL: DELETE FROM file where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,') AND device = 2065 AND inode  = 805562158 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,', 0, 'local', 'peer', 'MV', 'v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 805562158, '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764', 16, 33188)
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,') AND device = 2065 AND inode  = 805562158 AND peername = 'other' ORDER BY timestamp 
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '(null)'
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' AND peername = 'other'
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,', 0, 'local', 'other', 'NEW', 'v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 805562158, NULL, 1, 33188)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,', 'v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 805562158, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1468737554)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
csync_cmpchecktxt A: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
csync_cmpchecktxt A: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
SQL Query finished.
SQL: SELECT peername, device, inode, checktxt, count(*) from dirty group by 1,2,3,4 having count(*) > 1
0 files with multiple dev:inode.
SQL Query finished.
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by op DESC, filename DESC
SQL Query finished.
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
uid dennis gid schafroth
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'
CONN peer < MV %25test%25/Maildir/new/1434.M21,S=6631,W=6764 
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
Delete moved file from dirty SQL: DELETE FROM dirty WHERE (filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764') AND peername = 'peer'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' AND peername = 'peer'
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' AND peername = 'peer'
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
CONN peer < SIG %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2, user/group 1000 1000 dennis schafroth 33188 
CONN peer > OK (data_follows).
read_conn_status 'OK (data_follows).' 0
CONN peer > v2%3Amtime=1468737554%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1468737554:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.C3zO5G
Running rs_sig_file() from librsync....
Reading signature size from peer....
CONN peer > octet-stream 32
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
Receiving signature 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (data_follows).
read_conn_status 'OK (data_follows).' 0
CONN peer > v2%3Amtime=1468737556%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.PGAeby
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (data_follows).
read_conn_status 'OK (data_follows).' 0
CONN peer > v2%3Amtime=1468737556%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1468737556:mode=16877:user=dennis:group=schafroth:type=dir 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.3afSgp
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1468737553.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1468737556.
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1468737556.
CONN peer < SETTIME %25test%25/Maildir/cur 
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > OK (cu_later).
read_conn_status 'OK (cu_later).' 0
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
