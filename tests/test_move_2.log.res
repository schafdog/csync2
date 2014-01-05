cmd x rm A, new Z => move A Z
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/local ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/local recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/A.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/local/Z
check_dirty (mod): before mark (all) 
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/test/local/Z.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/test/local/A' '' mark operation RM->NEW => MOVE peer '/export/home/dennis/Projects/csync2/csync2/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/local/A'.
Connecting to host peer (PLAIN) ...
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/test/local/Z
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=2
Signature size differs: local=32, peer=0
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/local/Z
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/local/A /export/home/dennis/Projects/csync2/csync2/test/local/Z
Finished succesfully.
