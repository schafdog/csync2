cmd x "clean up" local
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
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test 
SQL: SELECT filename, checktxt, device, inode, mode from file  where (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename > '/export/home/dennis/Projects/csync2/csync2/test/test/' and filename < '/export/home/dennis/Projects/csync2/csync2/test/test0') ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 2065 AND inode  = 281308393 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 281308393, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 2065 AND inode  = 281308393 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 2423487 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 2423487, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 2423487 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST') AND device = 2065 AND inode  = 281308400 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, NULL, 64, 33188)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST') AND device = 2065 AND inode  = 281308400 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 811295335 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 811295335, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 811295335 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S') AND device = 2065 AND inode  = 281308400 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '(null)'
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' clean_other: '(null)' result_other: '(null)' dirty: 1 operation 64 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 281308400, NULL, 64, 33188)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S') AND device = 2065 AND inode  = 281308400 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: HARDLINK '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'
mark operation HARDLINK -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 2065 AND inode  = 811295343 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 811295343, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461652:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 2065 AND inode  = 811295343 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND device = 2065 AND inode  = 673897466 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 673897466, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND device = 2065 AND inode  = 673897466 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND device = 2065 AND inode  = 673897440 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 673897440, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND device = 2065 AND inode  = 673897440 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
BEGIN  SQL: BEGIN 
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 2065 AND inode  = 281308388 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername like 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'RM', 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 281308388, NULL, 64, 16877)
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, checktxt, digest, op FROM dirty WHERE (checktxt = 'v2:mtime=1469461646:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 2065 AND inode  = 281308388 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local' '(null)'
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
Found row: file '/export/home/dennis/Projects/csync2/csync2/test/test/local' clean_other: '(null)' result_other: '(null)' dirty: 0 operation 512 
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername like 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'
csync_file_args: '/export/home/dennis/Projects/csync2/csync2/test/test' flags 65 
get dirty host
SQL: SELECT peername FROM dirty GROUP BY peername
dirty host peer 
SQL Query finished.
SQL: SELECT filename, operation, op, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by op DESC, filename DESC
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1
compare file with pattern /export/home/dennis/Projects/csync2/csync2/test/test
dirty: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local 1
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
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new RM (null) 0
Dirty (missing) item /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp RM (null) 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461648%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461648:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.RzpdWR
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir/tmp 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461650%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461650:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.3eqfmt
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
CONN peer < SIG %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461647%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8'
csync_cmpchecktxt A: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.VA8CM4
Reading signature size from peer....
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
Signature size differs: local=0, peer=32
Receiving signature 32 bytes ..
Found EOF in local sig file.
Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir/cur/1434.M21,S=6631,W=6764%3A2,ST 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461653%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.oFgmdG
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
CONN peer < SIG %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461647%3Amode=33188%3Auser=dennis%3Agroup=schafroth%3Atype=reg%3Asize=8'
csync_cmpchecktxt A: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461647:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.lKgyEh
Reading signature size from peer....
CONN peer > 'octet-stream 32'
Content length in buffer: 'octet-stream 32' size: 32 rc: 0 
Signature size differs: local=0, peer=32
Receiving signature 32 bytes ..
Found EOF in local sig file.
Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir/.Trash/cur/1434.M21,S=6631,W=6764%3A2,S 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461653%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.tWsa6S
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir/.Trash/cur 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
CONN peer < SIG %25test%25/Maildir/.Trash 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461653%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.7Cedyu
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
CONN peer < SIG %25test%25/Maildir 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461653%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.6fDL05
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 
CONN peer > 'OK (data_follows).'
read_conn_status 'OK (data_follows).' 0
CONN peer > 'v2%3Amtime=1469461653%3Amode=16877%3Auser=dennis%3Agroup=schafroth%3Atype=dir'
csync_cmpchecktxt A: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=1469461653:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.u8f2tH
Reading signature size from peer....
CONN peer > 'octet-stream 0'
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEL %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername like 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/test/test/local.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir.
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT (close) SQL: COMMIT 
Closing db: 0x221d360
Closed db: 0x221d360
Finished succesfully.
