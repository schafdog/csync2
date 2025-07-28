cmd x "3 Maildir tmp file" local peer test
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
csync_file_args: '<TESTBASE>/test' flags 65 
Running recursive check for <TESTBASE>/test ...
Checking recursive for modified files <TESTBASE>/test 
csync_check_dir: <TESTBASE>/test 65 
Checking <TESTBASE>/test/* ..
Calling check_mod on <TESTBASE>/test/local from <TESTBASE>/test
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local' -> NULL
New file: <TESTBASE>/test/local
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local' '-'.
INSERT/UPDATE: <TESTBASE>/test/local NULL
Inserted/updated <TESTBASE>/test/local rows matched: 1
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir' -> NULL
New file: <TESTBASE>/test/local/Maildir
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/Maildir NULL
Inserted/updated <TESTBASE>/test/local/Maildir rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir 193 
Checking <TESTBASE>/test/local/Maildir/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/tmp from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/tmp' -> NULL
New file: <TESTBASE>/test/local/Maildir/tmp
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/tmp <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/tmp' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/tmp' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/tmp NULL
Inserted/updated <TESTBASE>/test/local/Maildir/tmp rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/tmp 193 
Checking <TESTBASE>/test/local/Maildir/tmp/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/tmp/123 from <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/tmp/123' -> NULL
New file: <TESTBASE>/test/local/Maildir/tmp/123
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/tmp/123 <TESTBASE>/test/local/Maildir/tmp/123
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/Maildir/tmp/123' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/Maildir/tmp/123' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/tmp/123 32a0617aab4c9fe725f1b5bc441291180ad25b73
Inserted/updated <TESTBASE>/test/local/Maildir/tmp/123 rows matched: 1
Calling check_mod on <TESTBASE>/test/local/Maildir/cur from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/cur' -> NULL
New file: <TESTBASE>/test/local/Maildir/cur
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/cur <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/cur' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/cur' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/cur NULL
Inserted/updated <TESTBASE>/test/local/Maildir/cur rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/cur 193 
Checking <TESTBASE>/test/local/Maildir/cur/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash from <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/.Trash' -> NULL
New file: <TESTBASE>/test/local/Maildir/.Trash
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash NULL
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/* ..
Calling check_mod on <TESTBASE>/test/local/Maildir/.Trash/cur from <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/Maildir/.Trash/cur' -> NULL
New file: <TESTBASE>/test/local/Maildir/.Trash/cur
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/Maildir/.Trash/cur <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
mark other operation: 'MKDIR' 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MKDIR' 'other:<TESTBASE>/test/local/Maildir/.Trash/cur' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/Maildir/.Trash/cur NULL
Inserted/updated <TESTBASE>/test/local/Maildir/.Trash/cur rows matched: 1
csync_check_dir: <TESTBASE>/test/local/Maildir/.Trash/cur 193 
Checking <TESTBASE>/test/local/Maildir/.Trash/cur/* ..
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
get dirty host
dirty host other 
dirty host peer 
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/tmp/123' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/tmp/123 v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/tmp' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/tmp v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/cur' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/.Trash/cur' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash/cur v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir/.Trash' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir/.Trash v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/Maildir' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/Maildir v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local
CONN peer < SIG %25test%25 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local RC 32
has links: file <TESTBASE>/test/local checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 3 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local (0)
Directory time <TESTBASE>/test <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir
CONN peer < SIG %25test%25/Maildir user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir RC 32
has links: file <TESTBASE>/test/local/Maildir checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 5 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/.Trash
CONN peer < SIG %25test%25/Maildir/.Trash user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash RC 32
has links: file <TESTBASE>/test/local/Maildir/.Trash checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 3 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/.Trash - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash (0)
Directory time <TESTBASE>/test/local/Maildir <TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/.Trash/cur' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/.Trash/cur
CONN peer < SIG %25test%25/Maildir/.Trash/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/.Trash/cur RC 32
has links: file <TESTBASE>/test/local/Maildir/.Trash/cur checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/.Trash/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/.Trash/cur (0)
Directory time <TESTBASE>/test/local/Maildir/.Trash <TESTBASE>/test/local/Maildir/.Trash/cur
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/cur
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/cur' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/cur
CONN peer < SIG %25test%25/Maildir/cur user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/cur RC 32
has links: file <TESTBASE>/test/local/Maildir/cur checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/cur - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/cur (0)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/Maildir/tmp' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/tmp
CONN peer < SIG %25test%25/Maildir/tmp user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp RC 32
has links: file <TESTBASE>/test/local/Maildir/tmp checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25/Maildir/tmp - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp (0)
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp/123
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/Maildir/tmp/123' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/Maildir/tmp/123
CONN peer < SIG %25test%25/Maildir/tmp/123 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/Maildir/tmp/123 RC 32
has links: file <TESTBASE>/test/local/Maildir/tmp/123 checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4' 1 true
CONN peer < CREATE %25test%25/Maildir/tmp/123 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
read_conn_status 'OK (send data).' 0
CREATE <TESTBASE>/test/local/Maildir/tmp/123 4
Sending octet-stream of 4 bytes
CONN peer < octet-stream 4

Reading chunk 4 bytes of 4 from file
Writing chunk 4 bytes of 4
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/Maildir/tmp/123 (0)
Directory time <TESTBASE>/test/local/Maildir/tmp <TESTBASE>/test/local/Maildir/tmp/123
SETTIME peer:<TESTBASE>/test/local/Maildir/tmp
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/tmp
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/tmp 0.
CONN peer < SETTIME %25test%25/Maildir/tmp 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
SETTIME peer:<TESTBASE>/test/local/Maildir/.Trash
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir/.Trash
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir/.Trash 0.
CONN peer < SETTIME %25test%25/Maildir/.Trash 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
SETTIME peer:<TESTBASE>/test/local/Maildir
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/Maildir
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/Maildir 0.
CONN peer < SETTIME %25test%25/Maildir 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
SETTIME peer:<TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local 0.
CONN peer < SETTIME %25test%25 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
SETTIME peer:<TESTBASE>/test
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closed.
csync_config_destroy
csync_config_destroy end
