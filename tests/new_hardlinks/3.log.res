cmd u "3 two new files hardlinked (update)" local
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
SQL: SELECT filename, operation, other, checktxt, digest, forced  FROM dirty WHERE peername = 'peer' AND myname = 'local' ORDER by filename DESC
SQL Query finished.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local 54, (null) 0, 0.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1000 1000 dennis schafroth 16877 1414765134 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.UkuoWd
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 3424520 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 3424520 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local' 
0 files with same dev:inode (2065:3424520) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
SQL Query finished.
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new 60, /export/home/dennis/Projects/csync2/csync2/tests/test/ 54, 54.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new user/group 1000 1000 dennis schafroth 16877 1414765134 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new', 0 [non-regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.lYp8Cb
Reading signature size from peer....
Receiving 0 bytes ..
File has been checked successfully (files are equal).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 3424451 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 3424451 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new' 
0 files with same dev:inode (2065:3424451) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
SQL Query finished.
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new - 1000 1000 dennis schafroth 16877 1414765134 
clear dirty with rc 4
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked 64, /export/home/dennis/Projects/csync2/csync2/tests/test/local/ 60, 60.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group 1000 1000 dennis schafroth 33188 1414765134 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=4
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.o8Jzk9
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 1229919 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 1229919 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked' 
2 files with same dev:inode (2065:1229919) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
Hardlinking %25test%25/new/new_file -> %25test%25/new/hardlinked
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file %25test%25/new/hardlinked
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
ERROR from peer: PATCH (/export/home/dennis/Projects/csync2/csync2/tests/test/peer/new/new_file)
Failed to hard link %25test%25/new/new_file %25test%25/new/hardlinked
Hardlinking %25test%25/new/new_file -> %25test%25/new/hardlinked
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file %25test%25/new/hardlinked
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
ERROR from peer: PATCH (/export/home/dennis/Projects/csync2/csync2/tests/test/peer/new/new_file)
Failed to hard link %25test%25/new/new_file %25test%25/new/hardlinked
HARDLINK failed. Continuing with PATCH
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 1229919 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 1229919 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked' 
2 files with same dev:inode (2065:1229919) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 1414765134 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=4
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.HWsW26
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 1414765134 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=4
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.fwyoL4
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
local> PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked - 1000 1000 dennis schafroth 33188 1414765134 
Csync2 / Librsync: csync_rs_delta('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked')
Receiving sig_file from peer..
Receiving 12 bytes ..
Got 12 bytes, 0 bytes left ..
Opening new_file and delta_file..
Running rs_build_hash_table() from librsync..
Running rs_delta_file() from librsync..
Sending delta_file to peer..
Sending octet-stream of 11 bytes
local> octet-stream 11
Delta has been created successfully.
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 1229919 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 1229919 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked' 
2 files with same dev:inode (2065:1229919) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 1414765134 
Flags for gencheck: 65 
csync_cmpchecktxt A: --- 
csync_cmpchecktxt B: --- 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=4
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.1LUkv2
Running rs_sig_file() from librsync....
Reading signature size from peer....
Signature size differs: local=32, peer=0
Receiving 0 bytes ..
File has been checked successfully (difference found).
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Hardlinking %25test%25/new/hardlinked -> %25test%25/new/new_file
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked %25test%25/new/new_file
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 1414765134 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.4mdRf0
Running rs_sig_file() from librsync....
Reading signature size from peer....
Receiving 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Hardlinking %25test%25/new/hardlinked -> %25test%25/new/new_file
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked %25test%25/new/new_file
local> SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked - 1000 1000 dennis schafroth 
local> SETMOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked 33188
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked 1414765134 
clear dirty with rc 0
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
check: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file 64, /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/ 64, 64.
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
uid dennis gid schafroth
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 1414765134 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.LdwN1X
Running rs_sig_file() from librsync....
Reading signature size from peer....
Receiving 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 1229919 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 1229919 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file' 
1 files with same dev:inode (2065:1229919) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Hardlinking %25test%25/new/hardlinked -> %25test%25/new/new_file
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked %25test%25/new/new_file
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file' AND peername = 'peer'
SQL:  SELECT filename, checktxt, digest FROM dirty  WHERE device = 2065 and inode = 1229919 and peername = 'peer' and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file'  UNION  SELECT filename, checktxt, digest FROM file  WHERE device = 2065 and inode = 1229919 and filename != '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file' 
1 files with same dev:inode (2065:1229919) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=1414765134:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/hardlinked user/group 1000 1000 dennis schafroth 33188 1414765134 
Flags for gencheck: 113 
csync_cmpchecktxt A: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
Csync2 / Librsync: csync_rs_check('/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked', 1 [regular file])
Opening basis_file and sig_file..
Tempfilename is csync2.Tv70OV
Running rs_sig_file() from librsync....
Reading signature size from peer....
Receiving 32 bytes ..
Got 32 bytes, 0 bytes left ..
File has been checked successfully (files are equal).
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
Hardlinking %25test%25/new/new_file -> %25test%25/new/hardlinked
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file %25test%25/new/hardlinked
local> SETOWN 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file - 1000 1000 dennis schafroth 
local> SETMOD 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file 33188
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/new/new_file 1414765134 
clear dirty with rc 0
Remove dirty-file entry. SQL: DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file' AND peername = 'peer'
Directory /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
Skipping textlist_add_new: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
Match (+): /export/home/dennis/Projects/csync2/csync2/tests/test/local on /export/home/dennis/Projects/csync2/csync2/tests/test/local
Setting directory time /export/home/dennis/Projects/csync2/csync2/tests/test/local 1414765134.
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1414765134 
local> BYE
SQL: SELECT command, logfile FROM action GROUP BY command, logfile
SQL Query finished.
Finished with 2 errors.
