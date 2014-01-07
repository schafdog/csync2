cmd x move C Maildir/tmp/123
Config-File:   csync2_local.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/tests/test/local'.
New group: test
New group:host: test peer
New group:host:pattern test peer %test%
New group:host:pattern test peer *~
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
SQL: SELECT count(*) from file
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test/local ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test/local recursive.
file /export/home/dennis/Projects/csync2/csync2/tests/test/local encoded /export/home/dennis/Projects/csync2/csync2/tests/test/local 
SQL: SELECT filename, checktxt, device, inode from file  where (filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' OR filename > '/export/home/dennis/Projects/csync2/csync2/tests/test/local/' and filename < '/export/home/dennis/Projects/csync2/csync2/tests/test/local0') ORDER BY filename
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local 54, (null) 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/C
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/C
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/C
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/C.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1810585 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/C', 0, 'local', 'peer', 'RM', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585, '')
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424352)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424352 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424352, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424514)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424514 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424514, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1810585 AND peername = 'peer'
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C' '' mark operation RM->NEW => MOVE peer '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123' '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C'.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123' AND peername = 'peer'
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123', 0, 'local', 'peer', 'MV', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585, '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C')
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424476)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424476 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424476, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424515)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424515 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424515, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424516)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424516 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424516, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/* ..
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host peer (PLAIN) ...
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 72, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/ 72, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 75, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash 68, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/ 75, 68.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 60, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/ 68, 60.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.jWMa0d
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.vpvVWb
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.SqOYU9
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.ZvnqU7
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.tv4RU5
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
clear dirty with rc 4
BEGIN  SQL: BEGIN 
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=2
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.0VdW23
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/C /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123
Delete moved file from dirty SQL: DELETE FROM dirty WHERE (filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123' OR filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C') AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1388959040.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp 1388959040.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 1388959040.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash 1388959040.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir 1388959040.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1388959040.
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT  SQL: COMMIT 
Finished succesfully.
