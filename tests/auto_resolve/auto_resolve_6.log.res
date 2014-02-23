cmd u "5 Update auto (younger)" local
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
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both 73, (null) 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both' NEW ''
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=12
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.yHnloW
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both')
Receiving sig_file from peer..
Receiving 12 bytes ..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 19 bytes
Delta has been created successfully.
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger/update_both' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local/auto/younger 1389684010.
SQL: SELECT filename, operation, other, forced  FROM dirty WHERE peername = 'other' AND myname = 'local' ORDER by filename ASC
SQL Query finished.
Connecting to host other (PLAIN) ...
Can't create socket.
ERROR: Connection to remote host `other' failed.
Host stays in dirty state. Try again later...
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished with 1 errors.
