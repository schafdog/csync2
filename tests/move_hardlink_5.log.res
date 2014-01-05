cmd u 5 Read and deleted (update)
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
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' 
SQL Query finished.
Connecting to host peer (PLAIN) ...
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab 79, (null) 0, 0.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab 72, /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/ 79, 68.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=4
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.Cu22SZ
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123 /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Delete moved file from dirty SQL: DELETE FROM dirty WHERE (filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab' OR filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/123') AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
 Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
 Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=4
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.csOUJo
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.73N9AN
Running rs_sig_file() from librsync....
Reading signature size from peer....
Receiving 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
ERROR from peer: Permission denied! (/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab)
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Hardlinking %25test%25/Maildir/.Trash/cur/123,Sab -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
ERROR from peer: PATCH (/export/home/dennis/Projects/csync2/csync2/tests/test/peer/Maildir/.Trash/cur/123,Sab)
Failed to hard link %25test%25/Maildir/.Trash/cur/123,Sab /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
SQL: SELECT filename, checktxt FROM file WHERE filename not in (select filename from dirty where device = 2065 and inode = 1548711) and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab' and device = 2065 and inode = 1548711 
csync_cmpchecktxt A: v2:mtime=1388947204:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1388947204:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
1 files with same dev:inode (2065:1548711) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.WSKAtc
Running rs_sig_file() from librsync....
Reading signature size from peer....
Receiving 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab')
Receiving sig_file from peer..
Receiving 12 bytes ..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 11 bytes
Delta has been created successfully.
SQL: SELECT filename, checktxt FROM file WHERE filename not in (select filename from dirty where device = 2065 and inode = 1548711) and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab' and device = 2065 and inode = 1548711 
csync_cmpchecktxt A: v2:mtime=1388947204:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1388947204:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
1 files with same dev:inode (2065:1548711) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab
SQL Query finished.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.ScTEOB
Running rs_sig_file() from librsync....
Reading signature size from peer....
Receiving 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,Sab
Hardlinking %25test%25/Maildir/.Trash/cur/123,Sab -> %25test%25/Maildir/cur/123,Sab
clear dirty with rc 0
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,Sab' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
 Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
 Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 1388947209.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur 1388947209.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp 1388947206.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur 1388947209.
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished with 2 errors.
