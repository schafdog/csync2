cmd x "clean up" local
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
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local 54, (null) 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424358, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0, 'local', 'other', 'RM', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424358, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675888:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424357, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new', 0, 'local', 'other', 'RM', 'v2:mtime=1413675888:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424357, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST', 0, 'local', 'other', 'RM', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'other', 'RM', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S', 0, 'local', 'other', 'RM', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'RM', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424359, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0, 'local', 'other', 'RM', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424359, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424355, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0, 'local', 'other', 'RM', 'v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424355, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir'
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mtime=1413675893:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675893:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/tests/test/local has changed: 
    v2:mtime=1413675893:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 'v2:mtime=1413675893:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1413675893:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, NULL)
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'other', 'MOD_DIR', 'v2:mtime=1413675893:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
BEGIN  SQL: BEGIN 
SQL: SELECT filename, operation, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.ynYJlv
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.1KAxkW
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST user/group
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.gHyAjn
Reading signature size from peer....
Signature size differs: local=0, peer=32
Receiving 32 bytes ..
Found EOF in local sig file.
Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.W8E6iO
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S user/group
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.ZyBYif
Reading signature size from peer....
Signature size differs: local=0, peer=32
Receiving 32 bytes ..
Found EOF in local sig file.
Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.VexcjG
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.yYXLj7
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 140736502410592 and inode = 0 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 140736502410592 and inode = 0 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' and digest = '(null)' 
0 files with same dev:inode (140736502410592:0) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.6eRGky
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local 54, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MOD_DIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1000 1000 dennis schafroth 16877 1413675893 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.nOh1lZ
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
check move MOD_DIR /export/home/dennis/Projects/csync2/csync2/tests/test/local (null) Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1413675893.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1413675893 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1413675893.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1413675893 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir.
local> BYE
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT  SQL: COMMIT 
Finished succesfully.
