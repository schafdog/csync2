cmd x "clean up" local
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/tests/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/tests/test recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash '-'.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
mark other operation: RM other:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/* ..
Don't check at all: /export/home/dennis/Projects/csync2/csync2/tests/test/peer
/export/home/dennis/Projects/csync2/csync2/tests/test/local has changed: 
    v2:mtime=1414697138:mode=16877:user=dennis:group=schafroth:type=dir 
DB: v2:mtime=1414697131:mode=16877:user=dennis:group=schafroth:type=dir MOD_DIR
mark other operation: MOD_DIR peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
mark other operation: MOD_DIR other:/export/home/dennis/Projects/csync2/csync2/tests/test/local '-'.
Checking /export/home/dennis/Projects/csync2/csync2/tests/test/local/* ..
2 files with multiple dev:inode.
Connecting to host peer (PLAIN) ...
local> CONFIG 
local> HELLO local
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MOD_DIR ''
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 user/group 1000 1000 dennis schafroth 16877 1414697138 
?S: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
0 files with same dev:inode (2065:3424520) as file: /export/home/dennis/Projects/csync2/csync2/tests/test/local
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/tmp
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/tmp
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/new
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/new
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur/123,ST
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Signature size differs: local=0, peer=32
Found EOF in local sig file.
Found diff in sig at -32:-0
File is different on peer (rsync sig).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur/123,ST
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/cur
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur/123,S
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=33188:user=dennis:group=schafroth:type=reg:size=8
>>> LOCAL: ---
Signature size differs: local=0, peer=32
Found EOF in local sig file.
Found diff in sig at -32:-0
File is different on peer (rsync sig).
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur/123,S
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash/cur
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir/.Trash
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir/.Trash
Deleting peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/Maildir
local> SIG 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir user/group
File is different on peer (cktxt char #73).
>>> PEER:  v2:mtime=0:mode=16877:user=dennis:group=schafroth:type=dir
>>> LOCAL: ---
local> DEL 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25/Maildir
local> SETTIME 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV %25test%25 1414697138 
local> BYE
Finished succesfully.
