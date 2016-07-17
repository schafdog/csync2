cmd x "Setup Maildir" local
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 2065 AND inode  = 805558492 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 805558492, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 2065 AND inode  = 805558492 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 805558492, NULL, 1, 16877)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 805558492, NULL, 16877, 20, 1468737553)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND device = 2065 AND inode  = 1935520 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 1935520, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND device = 2065 AND inode  = 1935520 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 1935520, NULL, 1, 16877)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 1935520, NULL, 16877, 49, 1468737553)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 2065 AND inode  = 805558495 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 805558495, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 2065 AND inode  = 805558495 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 805558495, NULL, 1, 16877)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 805558495, NULL, 16877, 6, 1468737553)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 544558154 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 544558154, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 2065 AND inode  = 544558154 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 544558154, NULL, 1, 16877)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 544558154, NULL, 16877, 6, 1468737553)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 278910705 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910705, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 2065 AND inode  = 278910705 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910705, NULL, 1, 16877)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910705, NULL, 16877, 6, 1468737553)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND device = 2065 AND inode  = 1935521 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 1935521, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND device = 2065 AND inode  = 1935521 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 1935521, NULL, 1, 16877)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 1935521, NULL, 16877, 16, 1468737553)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest, mode, size, mtime FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
BEGIN  SQL: BEGIN 
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 2065 AND inode  = 278910707 AND peername = 'peer' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910707, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, op FROM dirty WHERE (checktxt = 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 2065 AND inode  = 278910707 AND peername = 'other' ORDER BY timestamp 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910707, NULL, 1, 16877)
Adding new file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size, mtime) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 'v2:mtime=1468737553:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 278910707, NULL, 16877, 6, 1468737553)
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (not_found).
read_conn_status 'OK (not_found).' 32
CONN peer < MKDIR %25test%25 - 1000 1000 dennis schafroth 16877 
CONN peer > IDENT (cmd_finished).
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
CONN peer < SIG %25test%25/Maildir user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (not_found).
read_conn_status 'OK (not_found).' 32
CONN peer < MKDIR %25test%25/Maildir - 1000 1000 dennis schafroth 16877 
CONN peer > IDENT (cmd_finished).
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
CONN peer < SIG %25test%25/Maildir/.Trash user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (not_found).
read_conn_status 'OK (not_found).' 32
CONN peer < MKDIR %25test%25/Maildir/.Trash - 1000 1000 dennis schafroth 16877 
CONN peer > IDENT (cmd_finished).
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (not_found).
read_conn_status 'OK (not_found).' 32
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 
CONN peer > IDENT (cmd_finished).
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (not_found).
read_conn_status 'OK (not_found).' 32
CONN peer < MKDIR %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 
CONN peer > IDENT (cmd_finished).
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (not_found).
read_conn_status 'OK (not_found).' 32
CONN peer < MKDIR %25test%25/Maildir/new - 1000 1000 dennis schafroth 16877 
CONN peer > IDENT (cmd_finished).
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group 1000 1000 dennis schafroth 16877 
CONN peer > OK (not_found).
read_conn_status 'OK (not_found).' 32
CONN peer < MKDIR %25test%25/Maildir/tmp - 1000 1000 dennis schafroth 16877 
CONN peer > IDENT (cmd_finished).
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod rc 4.
After setown/settime/setmod rc 4.
Clear dirty peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (0)
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1468737553.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1468737553.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1468737553.
CONN peer < SETTIME %25test%25 
CONN peer > OK (cmd_finished).
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > OK (cu_later).
read_conn_status 'OK (cu_later).' 0
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT (close) SQL: COMMIT 
Finished succesfully.
