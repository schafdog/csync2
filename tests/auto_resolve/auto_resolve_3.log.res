cmd u "2 create directories (update)" local
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
SQL: SELECT peername FROM dirty GROUP BY peername
SQL Query finished.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host peer (PLAIN) ...
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger 65, (null) 0, 0.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller 65, /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/ 65, 65.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older 65, /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/ 65, 65.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger 65, /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/ 65, 65.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto 60, /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/ 65, 60.
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local 54, /export/home/dennis/Projects/csync2/csync2/tests/test/local/ 60, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mode=16877:user=dennis:group=schafroth:type=dir 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.mVe3FB
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto' MKDIR ''
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.VF30R1
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger' MKDIR ''
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.e6s45r
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/larger' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older' MKDIR ''
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.XLVLkS
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/older' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller' MKDIR ''
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.noQsAi
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/smaller' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' MKDIR ''
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.7WvfRI
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto 1389683999.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1389683999.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'other' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host other (PLAIN) ...
Can't create socket.
ERROR: Connection to remote host `other' failed.
Host stays in dirty state. Try again later...
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished with 1 errors.
