cmd x move C Maildir/tmp/123
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/local ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/local recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/C.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/local/Maildir
check_dirty (mod): before mark (all) 
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp
check_dirty (mod): before mark (all) 
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp/123
check_dirty (mod): before mark (all) 
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp/123.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/test/local/C' '' mark operation RM->NEW => MOVE peer '/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp/123' '/export/home/dennis/Projects/csync2/csync2/test/local/C'.
New file: /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur
check_dirty (mod): before mark (all) 
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash
check_dirty (mod): before mark (all) 
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/cur
check_dirty (mod): before mark (all) 
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/cur.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/cur/* ..
Connecting to host peer (PLAIN) ...
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/local/Maildir
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/cur
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp
uid dennis gid schafroth
Updating peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp/123
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=2
Signature size differs: local=32, peer=0
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp/123
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/local/C /export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp/123
Finished succesfully.
