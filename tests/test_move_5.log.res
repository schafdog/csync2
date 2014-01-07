cmd c move B C => mv Z C (check)
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
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/B
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/B
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/B
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/B.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1810585 AND peername = 'peer'
mark other: Old operation: MV '/export/home/dennis/Projects/csync2/csync2/tests/test/local/B' '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z' mark operation MV->RM peer '/export/home/dennis/Projects/csync2/csync2/tests/test/local/B' '/export/home/dennis/Projects/csync2/csync2/tests/test/local/B' '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z'.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/B' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z', 0, 'local', 'peer', 'RM', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585, '')
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/B'
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/C
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/C
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/C', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/C
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/C
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/C.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2' AND device = 2065 AND inode  = 1810585 AND peername = 'peer'
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z' '' mark operation RM->NEW => MOVE peer '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C' '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z'.
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/C' AND peername = 'peer'
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/C', 0, 'local', 'peer', 'MV', 'v2:mtime=1388959035:mode=33188:user=dennis:group=schafroth:type=reg:size=2', 2065, 1810585, '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Z')
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
