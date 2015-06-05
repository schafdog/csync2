cmd x "New file deleted" local
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
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej', 0, 'local', 'peer', 'RM', 'v2:mtime=1422010274:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2065, 554592646, NULL)
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej', 0, 'local', 'other', 'RM', 'v2:mtime=1422010274:mode=33188:user=dennis:group=schafroth:type=reg:size=4', 2065, 554592646, NULL)
Delete file from DB. It isn't with us anymore. SQL: delete from file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej'
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
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin' 
csync_cmpchecktxt A: v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=1422010274:mode=16877:user=dennis:group=schafroth:type=dir 
SQL Query finished.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/* ..
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

Dirty (deleted) item /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej RM 0 
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej
CONN local> SIG %25test%25/usr/local/sbin/hej 
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4
>>> LOCAL: ---
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.Z0OhVq
Reading signature size from peer....
Signature size differs: local=0, peer=32
Receiving signature 32 bytes ..
Found EOF in local sig file.
Found diff in sig at -32:-0
Got 32 bytes, 0 bytes left ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
CONN local> DEL %25test%25/usr/local/sbin/hej 
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin/hej' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/usr/local/sbin 1422010274.
CONN local> SETTIME %25test%25/usr/local/sbin 
CONN local> BYE

SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished succesfully.
