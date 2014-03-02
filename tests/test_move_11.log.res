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
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424514 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0, 'local', 'peer', 'RM', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424514, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424514 AND peername = 'other'
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp deleted before syncing. Removing from dirty.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1393759166:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1811025 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S', 0, 'local', 'peer', 'RM', 'v2:mtime=1393759166:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1811025, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1393759166:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1811025 AND peername = 'other'
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' '(null)' mark operation NEW -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S deleted before syncing. Removing from dirty.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' AND peername = 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424476 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'peer', 'RM', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424476, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424476 AND peername = 'other'
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur deleted before syncing. Removing from dirty.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3719446 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'RM', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3719446, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3719446 AND peername = 'other'
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur deleted before syncing. Removing from dirty.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424515 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0, 'local', 'peer', 'RM', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424515, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424515 AND peername = 'other'
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash deleted before syncing. Removing from dirty.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424352 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0, 'local', 'peer', 'RM', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424352, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424352 AND peername = 'other'
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' '(null)' mark operation MKDIR -> NOP other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir deleted before syncing. Removing from dirty.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'other'
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir'
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host peer (PLAIN) ...
Dirty item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp RM 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.nzAWmc
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Dirty item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S RM 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=2 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=2 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=2
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.eUxMcl
Reading signature size from peer....
Signature size differs: local=0, peer=32
Receiving 32 bytes ..
Found EOF in local sig file.
Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Dirty item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur RM 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.AMKWHw
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Dirty item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur RM 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.EDoZgI
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Dirty item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash RM 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.d9LsQT
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Dirty item /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir RM 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.qF9sq5
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1393759262.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Silent skipping missing directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'other' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host other (PLAIN) ...
Can't create socket.
ERROR: Connection to remote host `other' failed.
Host stays in dirty state. Try again later...
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished with 1 errors.
