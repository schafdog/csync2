cmd u "10 not hardlinked when updated" local peer test
csync_hostinfo 0x0
standalone: 0 server_standalone > 0: false
Config-File:   csync2_pgsql_local.cfg
Prefix 'test' is set to '<TESTBASE>/test/local'.
New host alias: local: localhost 30860
New host alias: peer: localhost 30861
New host alias: other: localhost 30862
New group: test
New group:host: test peer
New group:host: test other
New group:host:pattern test other %test%
New group:host:pattern test other %test%/autoresolve
New group:host:pattern test other *~
New group:host:pattern test other *.o
New group:host:pattern test other .*.XXXXXX
New group: first
New group:host: first peer
New group:host: first other
New group:host:pattern first other %test%/auto/first
New group: younger
New group:host: younger peer
New group:host: younger other
New group:host:pattern younger other %test%/auto/younger
New group: older
New group:host: older peer
New group:host: older other
New group:host:pattern older other %test%/auto/older
New group: bigger
New group:host: bigger peer
New group:host: bigger other
New group:host:pattern bigger other %test%/auto/bigger
New group: smaller
New group:host: smaller peer
New group:host: smaller other
New group:host:pattern smaller other %test%/auto/smaller
New group: left
New group:host: left peer
New group:host: left other
New group:host:pattern left other %test%/auto/left
New group: right
New group:host: right peer
New group:host: right other
New group:host:pattern right other %test%/auto/right
New group: test_action
New group:host: test_action peer
New group:host: test_action other
New group:host:pattern test_action other %test%/action
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
get dirty host
dirty host other 
dirty host peer 
DIRTY LOOKUP: '<TESTBASE>/test/local/new/hardlinked_6' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new/hardlinked_6 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/new/was_hardlink' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/new/was_hardlink v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/new' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
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
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/new' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new
CONN peer < SIG %25test%25/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
Continue to rs_check <TESTBASE>/test/local/new 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/new', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/new
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/new
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new
has links: file <TESTBASE>/test/local/new checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/new' on DIFF_META
CONN peer < MOD %25test%25/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/new (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/new/was_hardlink' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/new/was_hardlink
CONN peer < SIG %25test%25/new/was_hardlink user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/new/was_hardlink RC 32
has links: file <TESTBASE>/test/local/new/was_hardlink checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' 1 true
CONN peer < CREATE %25test%25/new/was_hardlink - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
read_conn_status 'OK (send data).' 0
CREATE <TESTBASE>/test/local/new/was_hardlink 4
Sending octet-stream of 4 bytes
CONN peer < octet-stream 4

Reading chunk 4 bytes of 4 from file
Writing chunk 4 bytes of 4
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/new/was_hardlink (0)
Directory time <TESTBASE>/test/local/new <TESTBASE>/test/local/new/was_hardlink
Dirty (missing) item <TESTBASE>/test/local/new/hardlinked_6 HARDLINK <TESTBASE>/test/local/new/was_hardlink 0
Unable to HARDLINK peer:<TESTBASE>/test/local/new/hardlinked_6. File has disappeared since check.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_6
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/hardlinked_6
mark other operation: 'RM' 'peer:<TESTBASE>/test/local/new/hardlinked_6' '-'.
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new/was_hardlink
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/was_hardlink' '-'.
make other dirty <TESTBASE>/test/local/new/was_hardlink
SETTIME peer:<TESTBASE>/test/local/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/new
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/new 0.
CONN peer < SETTIME %25test%25/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
SETTIME peer:<TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4
Redis closed.
csync_config_destroy
csync_config_destroy end
