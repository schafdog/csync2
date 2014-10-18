cmd x "Delete email: ln Maildir/cur/123,S Maildir/.Trash/cur/123,S. mv 123,S 123,ST" local
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
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 60, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/ 60, 60.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 75, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/ 75, 68.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S', 0, 'local', 'peer', 'RM', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S', 0, 'local', 'other', 'RM', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S'
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' 
csync_cmpchecktxt A: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' 
csync_cmpchecktxt A: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' 
csync_cmpchecktxt A: v2:mtime=1413675888:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675888:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' 
csync_cmpchecktxt A: v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur has changed: 
    v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1413675889:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL)
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'other', 'MOD_DIR', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424356, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST', 0, 'local', 'peer', 'NEW', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST', 0, 'local', 'other', 'NEW', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' 
csync_cmpchecktxt A: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' 
csync_cmpchecktxt A: v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur has changed: 
    v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1413675886:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL, 16877, 4096)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL)
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'other', 'MOD_DIR', 'v2:mtime=1413675892:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424360, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, '6cb0c34bcc2b89205c6601b4edaa2eace19ec981', 33188, 8)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S', 0, 'local', 'peer', 'NEW', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S', 0, 'local', 'other', 'NEW', 'v2:mtime=1413675886:mode=33188:user=dennis:group=schafroth:type=reg:size=8', 2065, 466945, NULL)
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST 72, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S RM 0 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 2065 and inode = 466945 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 2065 and inode = 466945 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' and digest = '(null)' 
0 files with same dev:inode (2065:466945) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,S user/group
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.eVPseB
Reading signature size from peer....
Signature size differs: local=0, peer=32
Receiving 32 bytes ..
Found EOF in local sig file.
Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,S
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/ 72, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S 79, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 75, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/ 79, 75.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MOD_DIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 1413675892 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.kSaLIZ
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
check move MOD_DIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur (null) Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S user/group 1000 1000 dennis schafroth 33188 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.Skjedo
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
check move NEW /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S (null) SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 2065 and inode = 466945 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 2065 and inode = 466945 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' and digest = '(null)' 
0 files with same dev:inode (2065:466945) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
SQL Query finished.
local> PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S - 1000 1000 dennis schafroth 33188 1413675886 
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S')
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
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 2065 and inode = 466945 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 2065 and inode = 466945 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' and digest = '(null)' 
0 files with same dev:inode (2065:466945) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
SQL Query finished.
local> SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S - 1000 1000 dennis schafroth 
local> SETMOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S 33188
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S 1413675886 
clear dirty with rc 0
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 1413675892 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.kjfEIM
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
check move MOD_DIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur (null) Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST user/group 1000 1000 dennis schafroth 33188 1413675886 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.hcldeb
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
check move NEW /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST (null) SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 2065 and inode = 466945 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 2065 and inode = 466945 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' and digest = '(null)' 
0 files with same dev:inode (2065:466945) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
SQL Query finished.
local> PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST - 1000 1000 dennis schafroth 33188 1413675886 
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST')
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
BEGIN  SQL: BEGIN 
SQL: SELECT filename, checktxt, digest FROM dirty WHERE device = 2065 and inode = 466945 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' and digest = '(null)'  UNION SELECT filename, checktxt, digest FROM file WHERE device = 2065 and inode = 466945 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' and digest = '(null)' 
0 files with same dev:inode (2065:466945) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
SQL Query finished.
local> SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST - 1000 1000 dennis schafroth 
local> SETMOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST 33188
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST 1413675886 
clear dirty with rc 0
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 1413675892.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1413675892 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 1413675892.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur 1413675892 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash 1413675886.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1413675886 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 1413675892.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur 1413675892 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 1413675892.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1413675892 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 1413675892.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1413675892 
local> BYE
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT  SQL: COMMIT 
Finished succesfully.
