cmd u "10 not hardlinked when updated" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
dirty: peer:<TESTBASE>/test/local/new/hardlinked_6 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new/was_hardlink v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
dirty: peer:<TESTBASE>/test/local/new v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/new' ''
CONN peer < SIG %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
<TESTBASE>/test/local/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/new
CONN peer > 'OK (cmd_finished).'
?M: peer            <TESTBASE>/test/local/new
CONN peer < MOD %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/new
Updating (NEW) 'peer:<TESTBASE>/test/local/new/was_hardlink' ''
CONN peer < SIG %25test%25/new/was_hardlink user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/was_hardlink RC 32
CONN peer < CREATE %25test%25/new/was_hardlink - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
CREATE <TESTBASE>/test/local/new/was_hardlink 4
CONN peer < octet-stream 4

CONN peer > 'IDENT (cmd_finished).'
Clear dirty peer:<TESTBASE>/test/local/new/was_hardlink (0)
Directory time <TESTBASE>/test/local/new <TESTBASE>/test/local/new/was_hardlink
Dirty (missing) item <TESTBASE>/test/local/new/hardlinked_6 HARDLINK <TESTBASE>/test/local/new/was_hardlink 0
Unable to HARDLINK peer:<TESTBASE>/test/local/new/hardlinked_6. File has disappeared since check.
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '-'.
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
make other dirty <TESTBASE>/test/local/new/was_hardlink
SETTIME peer:<TESTBASE>/test/local/new
update_directory: Setting directory time <TESTBASE>/test/local/new 0.
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
SETTIME peer:<TESTBASE>/test/local
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
CONN peer < BYE

CONN peer > 'OK (cu_later).'
