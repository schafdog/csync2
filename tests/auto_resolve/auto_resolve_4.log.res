cmd c "3" local
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
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto 60, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger 65, /export/home/dennis/Projects/csync2/csync2/tests/test/local/ 60, 60.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older 65, /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/ 65, 65.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller 65, /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/ 65, 65.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger 65, /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/ 65, 65.
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both', 'v2:mtime=1389684007:mode=33188:user=dennis:group=schafroth:type=reg:size=12', 2065, 1548711)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1389684007:mode=33188:user=dennis:group=schafroth:type=reg:size=12' AND device = 2065 AND inode  = 1548711 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both', 0, 'local', 'peer', 'NEW', 'v2:mtime=1389684007:mode=33188:user=dennis:group=schafroth:type=reg:size=12', 2065, 1548711, '')
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mtime=1389684007:mode=33188:user=dennis:group=schafroth:type=reg:size=12' AND device = 2065 AND inode  = 1548711 AND peername = 'other'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both', 0, 'local', 'other', 'NEW', 'v2:mtime=1389684007:mode=33188:user=dennis:group=schafroth:type=reg:size=12', 2065, 1548711, '')
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger' 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger/* ..
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
