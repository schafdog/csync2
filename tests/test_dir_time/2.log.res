cmd x "New directories" local
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
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 'v2:mtime=1414961405:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 285124976, NULL, 16877, 17)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1414961405:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 285124976, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1414961405:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 285124976, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1
SQL: SELECT checktxt, inode, device, digest FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1' 
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1
SQL Query finished.
Deleting old file entry SQL: DELETE FROM file WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1'
Adding or updating file entry SQL: INSERT INTO file (filename, checktxt, device, inode, digest, mode, size) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1', 'v2:mtime=1414961405:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 115556892, NULL, 16877, 6)
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1 '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1' AND peername = 'peer'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1', 0, 'local', 'peer', 'MKDIR', 'v2:mtime=1414961405:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 115556892, NULL)
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1 '-'.
Deleting old dirty file entries SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1' AND peername = 'other'
Marking File Dirty SQL: INSERT INTO dirty (filename, forced, myname, peername, operation, checktxt, device, inode, other) VALUES ('/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1', 0, 'local', 'other', 'MKDIR', 'v2:mtime=1414961405:mode=16877:user=dennis:group=schafroth:type=dir', 2065, 115556892, NULL)
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1/* ..
SQL: SELECT peername, device, inode, checktxt, count(*) AS DUPS from dirty group by 1,2,3,4 having DUPS > 1
0 files with multiple dev:inode.
SQL Query finished.
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename DESC
SQL Query finished.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local 54, (null) 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1000 1000 dennis schafroth 16877 1414961405 
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
File is different on peer (cktxt char #-1).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: v2:mtime=1414961405:mode=16877:user=dennis:group=schafroth:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.DsT8h3
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 285124976 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 285124976 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
0 files with same dev:inode (2065:285124976) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL Query finished.
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 - 1000 1000 dennis schafroth 16877 1414961405 
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/tests/test/peer)
Directory /export/home/dennis/Projects/csync2/csync2/tests/test
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1 60, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/dir1 user/group 1000 1000 dennis schafroth 16877 1414961405 
Flags for gencheck: 64 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=1414961405:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.izYDa6
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 115556892 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 115556892 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1' 
0 files with same dev:inode (2065:115556892) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1
SQL Query finished.
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/dir1 - 1000 1000 dennis schafroth 16877 1414961405 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/dir1' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Adding textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1414961405.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1414961405 
local> BYE
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished with 1 errors.
