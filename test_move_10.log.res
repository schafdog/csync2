cmd x clean up
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/local ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/local recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur/123,S.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/cur.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/* ..
Connecting to host peer (PLAIN) ...
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/tmp
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur/123,S
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=2
>>> LOCAL: ---
Signature size differs: local=0, peer=32
Found EOF in local sig file.
Found diff in sig at -32:-0
File is different on peer (rsync sig).
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/cur
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash/cur
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir/.Trash
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/local/Maildir
File is different on peer (cktxt char #73).
>>> PEER:  v2:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
Finished succesfully.
