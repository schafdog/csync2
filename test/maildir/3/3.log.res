cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local peer test
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
GIT:           ed87712401c07fac232d0f171ff40ded5a96fe77-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 65 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/peer from <TESTBASE>/test
No match. Don't check at all: <TESTBASE>/test/peer
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir 193 
Checking <TESTBASE>/test/local/Maildir/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/tmp from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/tmp' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/Maildir/tmp has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/tmp' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/tmp (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/tmp 
Inserted/updated <TESTBASE>/test/local/Maildir/tmp rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/tmp 193 
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/new from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/new' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/Maildir/new has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/Maildir/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '<TESTBASE>/test/local/Maildir/new' ''
mark operation NEW -> MOD => NEW other:<TESTBASE>/test/local/Maildir/new (not synced) .
Found row: file '%s' clean_other: '%s' result_other: '%s' dirty: %d operation %d 
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/new 
Inserted/updated <TESTBASE>/test/local/Maildir/new rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/new 193 
Checking <TESTBASE>/test/local/Maildir/new/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 from <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' -> NULL
New file: <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 6cb0c34bcc2b89205c6601b4edaa2eace19ec981
Inserted/updated <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 rows matched: 1
Calling check_mod on <TESTBASE>/test/local/Maildir/cur from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/cur' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/cur 193 
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/.Trash' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/.Trash/cur' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash/cur 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
get dirty host
dirty host other 
dirty host peer 
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/tmp' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/new' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/new v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/new' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/new
CONN peer < SIG %25test%25/Maildir/new user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/new RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/Maildir/new is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
Continue to rs_check <TESTBASE>/test/local/Maildir/new 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/Maildir/new', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/new
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/Maildir/new
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/new
has links: file <TESTBASE>/test/local/Maildir/new checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/Maildir/new' on DIFF_META
CONN peer < MOD %25test%25/Maildir/new - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/new (0)
Directory time <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (data_follows).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp RC 0
CONN peer > 'v2%3Amtime=xxxxxxxxxx%3Amode=16877%3Auser=<USER>%3Agroup=<GROUP>%3Atype=dir'
Flags for gencheck: 112 
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/Maildir/tmp is different on peer (cktxt char #-1).
>>> peer:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
>>> LOCAL:	v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Continue to rs_check <TESTBASE>/test/local/Maildir/tmp 16
Csync2 / Librsync: csync_rs_check('<TESTBASE>/test/local/Maildir/tmp', 0 [non-regular file])
rs_check: Opening basis_file and sig_file..
rs_check: Reading signature size from peer....
CONN peer > 'octet-stream 0'
Got octet-stream 0
Content length in buffer: 'octet-stream 0' size: 0 rc: 0 (octet-stream)
rs_check: Receiving signature 0 bytes for <TESTBASE>/test/local/Maildir/tmp
File has been checked successfully (files are equal).
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
?M: peer            <TESTBASE>/test/local/Maildir/tmp
END csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/tmp
has links: file <TESTBASE>/test/local/Maildir/tmp checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: 16
Doing MOD 'peer:<TESTBASE>/test/local/Maildir/tmp' on DIFF_META
CONN peer < MOD %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 16.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp (0)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
CONN peer < SIG %25test%25/Maildir/new/1434.M21,S=6631,W=6764 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 RC 32
has links: file <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=8' 1 true
CONN peer < CREATE %25test%25/Maildir/new/1434.M21,S=6631,W=6764 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
read_conn_status 'OK (send data).' 0
CREATE <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 8
Sending octet-stream of 8 bytes
CONN peer < octet-stream 8

Reading chunk 8 bytes of 8 from file
Writing chunk 8 bytes of 8
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764 (0)
Directory time <TESTBASE>/test/local/Maildir/new <TESTBASE>/test/local/Maildir/new/1434.M21,S=6631,W=6764
SETTIME peer:<TESTBASE>/test/local/Maildir/new
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/new
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/new 0.
CONN peer < SETTIME %25test%25/Maildir/new 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
SETTIME peer:<TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 0.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closed.
csync_config_destroy
csync_config_destroy end
