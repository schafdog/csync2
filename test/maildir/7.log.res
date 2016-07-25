cmd c "check: Delete email: ln Maildir/cur/1434.M21,S=6631,W=6764:2,S Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S. mv 1434.M21,S=6631,W=6764:2,S 1434.M21,S=6631,W=6764:2,ST" local
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
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
csync_cmpchecktxt A: v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
csync_cmpchecktxt A: v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur has changed: 
    v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1469461651:mode=16877:user=dennis:group=schafroth:type=dir MOD
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 811295335 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 811295335, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 811295335 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 811295335, NULL, 1, 16877)
Update file entry SQL: UPDATE file set checktxt='v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', device=2065, inode=811295335,                 digest=NULL, mode=16877, mtime=1469461652, size=40 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL:  SELECT filename, checktxt, digest FROM file  WHERE  device = 2065  AND inode = 281308400  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND checktxt  = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8'  AND digest    = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981' 
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S
1 files with same dev:inode (2065:281308400) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
SQL Query finished.
check same file (64) /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Remove old file from file db SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST') AND device = 2065 AND inode  = 281308400 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 0, 'local', 'peer', 'MV', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S', 16, 33188)
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST') AND device = 2065 AND inode  = 281308400 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '(null)'
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' clean_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' result_other: '(null)' dirty: 1 operation 1 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'other'
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 0, 'local', 'other', 'NEW', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, NULL, 1, 33188)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1469461647)
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
csync_cmpchecktxt A: v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur has changed: 
    v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir MOD
SQL Query finished.
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 2065 AND inode  = 811295343 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 811295343, NULL, 128, 16877)
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 2065 AND inode  = 811295343 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (not synced) .
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 1 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 811295343, NULL, 1, 16877)
Update file entry SQL: UPDATE file set checktxt='v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', device=2065, inode=811295343,                 digest=NULL, mode=16877, mtime=1469461652, size=39 where filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
csync_check_dir: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 193 
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL Query finished.
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL:  SELECT filename, checktxt, digest FROM file  WHERE  device = 2065  AND inode = 281308400  AND filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' AND checktxt  = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8'  AND digest    = '6cb0c34bcc2b89205c6601b4edaa2eace19ec981' 
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
1 files with same dev:inode (2065:281308400) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
SQL Query finished.
check same file (32) /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S') AND device = 2065 AND inode  = 281308400 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MV '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S'
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' clean_other: '(null)' result_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' dirty: 1 operation 32 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 0, 'local', 'peer', 'HARDLINK', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 32, 33188)
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S') AND device = 2065 AND inode  = 281308400 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '(null)'
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' clean_other: '(null)' result_other: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' dirty: 1 operation 32 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 0, 'local', 'other', 'HARDLINK', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 32, 33188)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8, 1469461647)
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 78, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 74.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/' 78, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 71, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/' 71, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
SQL Query finished.
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Closing db: 0xa15360
Closed db: 0xa15360
Finished succesfully.
