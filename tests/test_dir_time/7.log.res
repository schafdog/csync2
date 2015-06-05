cmd x "New file" local
Config-File:   csync2_local.cfg
New host alias: peer: localhost 30860
New host alias: local: localhost 30860
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
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr 60, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local 64, /export/home/dennis/Projects/csync2/csync2/tests/test/local/ 60, 60.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin 70, /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/ 64, 64.
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
csync_cmpchecktxt A: v2:mtime=1422010268:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1422010268:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr' 
csync_cmpchecktxt A: v2:mtime=1422010268:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1422010268:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' 
csync_cmpchecktxt A: v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local has changed: 
    v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1422010268:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local', 'v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 271048590, NULL, 16877, 17)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 271048590, NULL)
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local', 0, 'local', 'other', 'MOD_DIR', 'v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 271048590, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' 
csync_cmpchecktxt A: v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir 
/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin has changed: 
    v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1422010271:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin', 'v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 554586161, NULL, 16877, 16)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin', 0, 'local', 'peer', 'MOD_DIR', 'v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 554586161, NULL)
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin', 0, 'local', 'other', 'MOD_DIR', 'v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 554586161, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej', 'v2:mtime=1422010274:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2065, 554592646, '32a0617aab4c9fe725f1b5bc441291180ad25b73', 33188, 4)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej', 0, 'local', 'peer', 'NEW', 'v2:mtime=1422010274:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2065, 554592646, NULL)
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej', 0, 'local', 'other', 'NEW', 'v2:mtime=1422010274:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2065, 554592646, NULL)
SQL: SELECT peername, device, inode, checktxt, count(*) from dirty group by 1,2,3,4 having count(*) > 1
0 files with multiple dev:inode.
SQL Query finished.
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename DESC
SQL Query finished.
Connecting to host peer (PLAIN) ...
CONN local> CONFIG 

CONN local> HELLO local

check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local 64, /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/ 70, 64.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' MOD_DIR ''
CONN local> SIG %25test%25/usr/local user/group 1000 1000 dennis schafroth 16877 
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1422010272:mode=16877:user=dennis:group=schafroth:type=dir 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.X8TF3A
Reading signature size from peer....
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 271048590 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 271048590 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' 
0 files with same dev:inode (2065:271048590) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
SQL Query finished.
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin 70, /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/ 64, 64.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' MOD_DIR ''
CONN local> SIG %25test%25/usr/local/sbin user/group 1000 1000 dennis schafroth 16877 
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=1422010271:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1422010271:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #-3).
>>> PEER:  v2:mtime=1422010271:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.Zo3d0Q
Reading signature size from peer....
Receiving signature 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 554586161 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 554586161 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' 
0 files with same dev:inode (2065:554586161) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
SQL Query finished.
CONN local> MKDIR %25test%25/usr/local/sbin - 1000 1000 dennis schafroth 16877 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej 75, /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/ 70, 70.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' NEW ''
CONN local> SIG %25test%25/usr/local/sbin/hej user/group 1000 1000 dennis schafroth 33188 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=4
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.yUe1X6
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving signature 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 554592646 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 554592646 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' 
0 files with same dev:inode (2065:554592646) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
SQL Query finished.
CONN local> PATCH %25test%25/usr/local/sbin/hej - 1000 1000 dennis schafroth 33188 
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej')
Receiving sig_file from peer..
Receiving 12 bytes ..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 11 bytes
CONN local> octet-stream 11

Delta has been created successfully.
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin 1422010274.
CONN local> SETTIME %25test%25/usr/local/sbin 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local 1422010272.
CONN local> SETTIME %25test%25/usr/local 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr 1422010268.
CONN local> SETTIME %25test%25/usr 
CONN local> BYE

SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
