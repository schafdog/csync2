cmd x "Delete email: ln Maildir/cur/123,S Maildir/.Trash/cur/123,S. mv 123,S 123,ST" local
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/* ..
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/* ..
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/* ..
/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur has changed: 
    v2:mtime=1414697137:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1414697134:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/* ..
/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur has changed: 
    v2:mtime=1414697137:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1414697131:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
2 files with multiple dev:inode.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MOD_DIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 1414697137 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
0 files with same dev:inode (2065:3424433) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S user/group 1000 1000 dennis schafroth 33188 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Signature size differs: local=32, peer=0
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
3 files with same dev:inode (2065:1065966) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Other file not found. Posible MOVE operation: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
check move: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S 
 local> MV 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,S %25test%25/Maildir/.Trash/cur/123,S
Succes: MV /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD_DIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 1414697137 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
0 files with same dev:inode (2065:3424429) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST user/group 1000 1000 dennis schafroth 33188 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Signature size differs: local=32, peer=0
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
1 files with same dev:inode (2065:1065966) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
Hardlinking %25test%25/Maildir/.Trash/cur/123,S -> %25test%25/Maildir/cur/123,ST
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S %25test%25/Maildir/cur/123,ST
1 files with same dev:inode (2065:1065966) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
OPERATION: MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S to /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S user/group 1000 1000 dennis schafroth 33188 1414697131 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
Hardlinking %25test%25/Maildir/.Trash/cur/123,S -> %25test%25/Maildir/cur/123,ST
local> MKHARDLINK 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S %25test%25/Maildir/cur/123,ST
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,S user/group
peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,S is already up to date on peer. 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1414697137 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur 1414697137 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1414697131 
local> BYE
Finished succesfully.
