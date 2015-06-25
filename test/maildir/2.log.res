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
Opening shared library libmysqlclient.dylib
Reading symbols from shared library libmysqlclient.so
SQL: SELECT count(*) from file
SQL Query finished.
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
file /export/home/dennis/Projects/csync2/csync2/test/test encoded /export/home/dennis/Projects/csync2/csync2/test/test 
SQL: SELECT filename, checktxt, device, inode, mode from file  where (filename = '/export/home/dennis/Projects/csync2/csync2/test/test' OR filename > '/export/home/dennis/Projects/csync2/csync2/test/test/' and filename < '/export/home/dennis/Projects/csync2/csync2/test/test0') ORDER BY filename
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/test/test/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127259, NULL, 16877, 102)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 16777223 AND inode  = 80127259 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127259, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local') AND device = 16777223 AND inode  = 80127259 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127259, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127260, NULL, 16877, 204)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND device = 16777223 AND inode  = 80127260 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127260, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir') AND device = 16777223 AND inode  = 80127260 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127260, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127263, NULL, 16877, 68)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 16777223 AND inode  = 80127263 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127263, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp') AND device = 16777223 AND inode  = 80127263 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127263, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127262, NULL, 16877, 68)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 16777223 AND inode  = 80127262 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127262, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new') AND device = 16777223 AND inode  = 80127262 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127262, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127261, NULL, 16877, 68)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 16777223 AND inode  = 80127261 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127261, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur') AND device = 16777223 AND inode  = 80127261 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127261, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127264, NULL, 16877, 102)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
BEGIN  SQL: BEGIN 
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND device = 16777223 AND inode  = 80127264 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127264, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash') AND device = 16777223 AND inode  = 80127264 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127264, NULL, 1, 16877)
Checking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127265, NULL, 16877, 68)
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 16777223 AND inode  = 80127265 AND peername = 'peer' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127265, NULL, 1, 16877)
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
SQL: SELECT operation, filename, other, op from dirty where (checktxt = 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir' OR filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur') AND device = 16777223 AND inode  = 80127265 AND peername = 'other' 
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other, op, mode) VALUES ('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1435222168:mode=16877:user=dennis:group=staff:type=dir', 16777223, 80127265, NULL, 1, 16877)
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local' 53, cached path: '(null)' 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' MKDIR ''
CONN peer < SIG %25test%25 user/group 1000 20 dennis staff 16877 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222168:mode=16877:uid=1000:gid=20:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127259 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127259 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local' 
0 files with same dev:inode (16777223:80127259) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local
SQL Query finished.
CONN peer < MKDIR %25test%25 - 1000 20 dennis staff 16877 
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 59, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/' 53, 53.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' MKDIR ''
CONN peer < SIG %25test%25/Maildir user/group 1000 20 dennis staff 16877 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222168:mode=16877:uid=1000:gid=20:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127260 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127260 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' 
0 files with same dev:inode (16777223:80127260) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
SQL Query finished.
CONN peer < MKDIR %25test%25/Maildir - 1000 20 dennis staff 16877 
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/' 59, 59.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' MKDIR ''
CONN peer < SIG %25test%25/Maildir/.Trash user/group 1000 20 dennis staff 16877 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222168:mode=16877:uid=1000:gid=20:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash', 0 [non-regular file])
Opening basis_file and sig_file..
Reading signature size from peer....
CONN peer > octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
CONN peer > OK (cmd_finished).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL:  SELECT filename, checktxt, digest, operation FROM dirty  WHERE device = 16777223 and inode = 80127264 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash'  UNION  SELECT filename, checktxt, digest, NULL FROM file  WHERE device = 16777223 and inode = 80127264 and filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' 
0 files with same dev:inode (16777223:80127264) as file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
SQL Query finished.
CONN peer < MKDIR %25test%25/Maildir/.Trash - 1000 20 dennis staff 16877 
CONN peer > IDENT (cmd_finished).
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' 74, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' MKDIR ''
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group 1000 20 dennis staff 16877 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222168:mode=16877:uid=1000:gid=20:type=dir
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
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/' 74, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' MKDIR ''
CONN peer < SIG %25test%25/Maildir/cur user/group 1000 20 dennis staff 16877 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222168:mode=16877:uid=1000:gid=20:type=dir
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
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' MKDIR ''
CONN peer < SIG %25test%25/Maildir/new user/group 1000 20 dennis staff 16877 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222168:mode=16877:uid=1000:gid=20:type=dir
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
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
check_pure: filename: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' 67, cached path: '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/' 67, 67.
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
uid dennis gid staff
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' MKDIR ''
CONN peer < SIG %25test%25/Maildir/tmp user/group 1000 20 dennis staff 16877 
CONN peer > OK (not_found).
CONN peer > ---
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1435222168:mode=16877:uid=1000:gid=20:type=dir
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
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash 1435222168.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > OK (cmd_finished).
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir 1435222168.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > OK (cmd_finished).
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/test/test/local 1435222168.
CONN peer < SETTIME %25test%25 
CONN peer > OK (cmd_finished).
CONN peer < BYE

CONN peer > OK (cu_later).
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT (close) SQL: COMMIT 
Finished succesfully.
