cmd x "New Maildir/new/123 with transit in tmp " local
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 '-'.
mark other operation: NEW other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 '-'.
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/* ..
New file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
mark other operation: MKDIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: MKDIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/* ..
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1000 1000 dennis schafroth 16877 1413451057 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local (null) Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group 1000 1000 dennis schafroth 16877 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - 1000 1000 dennis schafroth 16877 1413451057 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group 1000 1000 dennis schafroth 16877 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - 1000 1000 dennis schafroth 16877 1413451057 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 1413451057 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 1413451057 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1000 1000 dennis schafroth 16877 1413451057 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123 user/group 1000 1000 dennis schafroth 33188 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Signature size differs: local=32, peer=0
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
check move NEW /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123 (null) local> PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123 - 1000 1000 dennis schafroth 33188 1413451057 
local> octet-stream 15
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1000 1000 dennis schafroth 16877 1413451057 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
check move MKDIR /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp (null) local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1000 1000 dennis schafroth 16877 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new 1413451058 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur 1413451057 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new 1413451058 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp 1413451057 
local> BYE
Finished succesfully.
