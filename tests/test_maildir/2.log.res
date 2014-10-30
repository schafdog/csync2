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
0 files with multiple dev:inode.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1000 1000 dennis schafroth 16877 1414697131 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
0 files with same dev:inode (2065:3424520) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group 1000 1000 dennis schafroth 16877 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
0 files with same dev:inode (2065:3424428) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir - 1000 1000 dennis schafroth 16877 1414697131 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group 1000 1000 dennis schafroth 16877 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
0 files with same dev:inode (2065:3424432) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash - 1000 1000 dennis schafroth 16877 1414697131 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group 1000 1000 dennis schafroth 16877 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
0 files with same dev:inode (2065:3424433) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur - 1000 1000 dennis schafroth 16877 1414697131 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group 1000 1000 dennis schafroth 16877 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
0 files with same dev:inode (2065:3424429) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur - 1000 1000 dennis schafroth 16877 1414697131 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group 1000 1000 dennis schafroth 16877 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
0 files with same dev:inode (2065:3424430) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new - 1000 1000 dennis schafroth 16877 1414697131 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123' NEW ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123 user/group 1000 1000 dennis schafroth 33188 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=33188:uid=1000:gid=1000:type=reg:size=8
Signature size differs: local=32, peer=0
File is different on peer (rsync sig).
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
0 files with same dev:inode (2065:1065966) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new/123
local> PATCH 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new/123 - 1000 1000 dennis schafroth 33188 1414697131 
local> octet-stream 15
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp' MKDIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group 1000 1000 dennis schafroth 16877 1414697131 
File is different on peer (cktxt char #-73).
>>> PEER:  ---
>>> LOCAL: v2:mtime=0:mode=16877:uid=1000:gid=1000:type=dir
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
0 files with same dev:inode (2065:3424431) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
local> MKDIR 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp - 1000 1000 dennis schafroth 16877 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new 1414697132 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1414697131 
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1414697131 
local> BYE
Finished succesfully.
