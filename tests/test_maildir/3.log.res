cmd x "move Maildir/new/123 Maildir/.Trash/cur/123" local
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/* ..
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/* ..
/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new has changed: 
 v2:mtime=1413451065:mode=16877:user=dennis:group=schafroth:type=dir 
 v2:mtime=1413451057:mode=16877:user=dennis:group=schafroth:type=dir
mark other operation: MOD peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: MOD other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/* ..
/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur has changed: 
 v2:mtime=1413451065:mode=16877:user=dennis:group=schafroth:type=dir 
 v2:mtime=1413451057:mode=16877:user=dennis:group=schafroth:type=dir
mark other operation: MOD peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MOD other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/* ..
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/* ..
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
0 files with same dev:inode (4323645:140619598171744) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123 user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Signature size differs: local=0, peer=32
Found EOF in local sig file.
Found diff in sig at -32:-0
File is different on peer (rsync sig).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MOD ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 1413451065 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
check move MOD /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur (null) Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123 user/group 1000 1000 dennis schafroth 33188 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Signature size differs: local=32, peer=0
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123
check move NEW /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123 (null) local> PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123 - 1000 1000 dennis schafroth 33188 1413451057 
local> octet-stream 15
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' MOD ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 1413451065 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
check move MOD /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new (null) local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1413451065 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1413451065 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new 1413451065 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new 1413451065 
local> BYE
Finished succesfully.
