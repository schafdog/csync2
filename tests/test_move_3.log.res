cmd x rm A, new Z => move A Z
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
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/A
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/A
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/A
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/A.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1810585 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/A' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/A', 0, 'local', 'peer', 'RM', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585, '')
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/A'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1810585 AND peername = 'peer'
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/A' '' mark operation RM->NEW => MOVE peer '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/tests/test/local/A'.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z' AND peername = 'peer'
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/A' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z', 0, 'local', 'peer', 'MV', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585, '/export/home/dennis/Projects/csync2/csync2/tests/test/local/A')
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host peer (PLAIN) ...
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z 60, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=2
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.TJ5AxU
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/A /export/home/dennis/Projects/csync2/csync2/tests/test/local/Z
Delete moved file from dirty SQL: DELETE FROM dirty WHERE (filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z' OR filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/A') AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1388959036.
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
