cmd c "1 create directories (check)" local
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
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424520 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, '')
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424520 AND peername = 'other'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424520, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424352)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424352 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424352, '')
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424352 AND peername = 'other'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto', 0, 'local', 'other', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424352, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424476)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424476 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424476, '')
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424476 AND peername = 'other'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger', 0, 'local', 'other', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424476, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424516)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424516 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424516, '')
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424516 AND peername = 'other'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller', 0, 'local', 'other', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424516, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424514)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424514 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424514, '')
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424514 AND peername = 'other'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older', 0, 'local', 'other', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424514, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
SQL: SELECT checktxt, inode, device FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424515)
check_dirty (mod): before mark (all) 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger.
BEGIN  SQL: BEGIN 
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424515 AND peername = 'peer'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger', 0, 'local', 'peer', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424515, '')
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger.
SQL: SELECT operation, filename, other from dirty where checktxt = 'v2:mode=16877:user=dennis:group=schafroth:type=dir' AND device = 2065 AND inode  = 3424515 AND peername = 'other'
SQL Query finished.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger', 0, 'local', 'other', 'MKDIR', 'v2:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 3424515, '')
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger/* ..
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
COMMIT  SQL: COMMIT 
Finished succesfully.
