cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local
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
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test 65 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/test/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
csync_cmpchecktxt A: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
csync_cmpchecktxt A: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
csync_cmpchecktxt A: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp has changed: 
    v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir MOD
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 2065 AND inode  = 281308393 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 281308393, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 2065 AND inode  = 281308393 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 281308393, NULL, 1, 16877)
Update file entry SQL: UPDATE file set checktxt='v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir', device=2065, inode=281308393,                 digest=NULL, mode=16877, mtime=1469461648, size=6 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
csync_cmpchecktxt A: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new has changed: 
    v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir MOD
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 2423487 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 2423487, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 2423487 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 2423487, NULL, 1, 16877)
Update file entry SQL: UPDATE file set checktxt='v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir', device=2065, inode=2423487,                 digest=NULL, mode=16877, mtime=1469461648, size=35 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
SQL:  SELECT filename, checktxt, digest FROM file  WHERE  device = 2065  AND inode = 281308400  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' AND checktxt  = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8'  AND digest    = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981' 
0 files with same dev:inode (2065:281308400) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764') AND device = 2065 AND inode  = 281308400 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764', 0, 'local', 'peer', 'NEW', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, NULL, 1, 33188)
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764') AND device = 2065 AND inode  = 281308400 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764', 0, 'local', 'other', 'NEW', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, NULL, 1, 33188)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1469461647)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
csync_cmpchecktxt A: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
csync_cmpchecktxt A: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
csync_cmpchecktxt A: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 193 
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/' 71, 67.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty GROUP BY peername
dirty host other 
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by op DESC, filename DESC
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 1
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
uid dennis gid schafroth
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
CONN peer < SIG %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group 1000 1000 dennis schafroth 33188 
CONN peer > 'OK (not_found).'
read_conn_status 'OK (not_found).' 32
CONN peer < PATCH %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - 1000 1000 dennis schafroth 33188 
CONN peer > 'OK (send_data).'
read_conn_status 'OK (send_data).' 0
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764')
Receiving sig_file from peer..
Tempfilename is csync2.KJiPTI
CONN peer > 'octet-stream 12'
Content length in buffer: 'octet-stream 12' size: 12 rc: 0 
Receiving 12 bytes ..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Tempfilename is csync2.jtQLP7
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 15 bytes
CONN peer < octet-stream 15

Delta has been created successfully.
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461648%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 0
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.9gO6Lw
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?S: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group 1000 1000 dennis schafroth 16877 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461646%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #-2).
>>> peer:  v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir
Continue to rs_check /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 16
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.tiUAIV
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
END csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < MKDIR %25test%25/Maildir/tmp - 1000 1000 dennis schafroth 16877 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1469461646.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1469461648.
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Closing db: 0x1dda360
Closed db: 0x1dda360
Finished succesfully.
