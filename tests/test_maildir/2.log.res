cmd x "New Maildir/new/123 with transit in tmp " local
Config-File:   csync2_local.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/tests/test/local'.
New group: test
New group:host: test peer
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other *~
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
SQL: SELECT count(*) from file
SQL Query finished.
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
file /export/home/dennis/Projects/csync2/csync2/tests/test encoded /export/home/dennis/Projects/csync2/csync2/tests/test 
SQL: SELECT filename, checktxt, device, inode from file  where (filename = '/export/home/dennis/Projects/csync2/csync2/tests/test' OR filename > '/export/home/dennis/Projects/csync2/csync2/tests/test/' and filename < '/export/home/dennis/Projects/csync2/csync2/tests/test0') ORDER BY filename
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424355, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424355, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424355, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424358, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424358, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424358, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424357, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424357, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424357, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123', 0, 'local', 'peer', 'NEW', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123', 0, 'local', 'other', 'NEW', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424359, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424359, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'other'
BEGIN  SQL: BEGIN 
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424359, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/* ..
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp 68, (null) 0, 0.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 72, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/ 72, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 75, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/ 75, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 60, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 60.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local 54, /export/home/dennis/Projects/csync2/csync2/tests/test/local/ 60, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1000 1000 dennis schafroth 16877 1413675886 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.O5NT6D
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local (null) Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group 1000 1000 dennis schafroth 16877 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.xQK2tX
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - 1000 1000 dennis schafroth 16877 1413675886 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group 1000 1000 dennis schafroth 16877 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.r8lyRg
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - 1000 1000 dennis schafroth 16877 1413675886 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.AiIl7A
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 1413675886 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.RWPAnV
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 1413675886 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.6sK5Df
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1000 1000 dennis schafroth 16877 1413675886 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123 user/group 1000 1000 dennis schafroth 33188 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.kk9PUz
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
check move NEW /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 (null) local> PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123 - 1000 1000 dennis schafroth 33188 1413675886 
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123')
Receiving sig_file from peer..
Receiving 12 bytes ..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 15 bytes
local> octet-stream 15
Delta has been created successfully.
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1000 1000 dennis schafroth 16877 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.o6ZacU
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1000 1000 dennis schafroth 16877 1413675886 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new 1413675888.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new 1413675888 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new 1413675888.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new 1413675888 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp 1413675886 
local> BYE
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT  SQL: COMMIT 
Finished succesfully.
