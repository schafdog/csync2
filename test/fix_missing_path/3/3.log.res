cmd x "3. Sync with missing directories" local peer test
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
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local 193 
Checking <TESTBASE>/test/local/* ..
Calling check_mod on <TESTBASE>/test/local/recursive from <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive 193 
Checking <TESTBASE>/test/local/recursive/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1 from <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1 193 
Checking <TESTBASE>/test/local/recursive/1/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2 from <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2 193 
Checking <TESTBASE>/test/local/recursive/1/2/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3 from <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2/3' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3 193 
Checking <TESTBASE>/test/local/recursive/1/2/3/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4 from <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2/3/4' -> NULL
check_file: calc_digest: 0 dirty: 0 is_upgrade 0 dev_change: 0
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4 193 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4/5 from <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2/3/4/5' -> NULL
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
<TESTBASE>/test/local/recursive/1/2/3/4/5 has changed: 
    v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
DB: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir MKDIR
ignore flags: 193
check_file: calc_digest: 0 dirty: 2 is_upgrade 0 dev_change: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
mark other operation: 'MOD_DIR' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
mark other operation: 'MOD_DIR' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4/5 
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5 rows matched: 1
csync_check_dir: <TESTBASE>/test/local/recursive/1/2/3/4/5 193 
Checking <TESTBASE>/test/local/recursive/1/2/3/4/5/* ..
Calling check_mod on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c from <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
Redis reply: GET 'CLOSE_WRITE,CLOSE:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' -> NULL
New file: <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
check_file: calc_digest: 4 dirty: 2 is_upgrade 0 dev_change: 0
csync_check_file_same_dev_inode <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
mark other operation: 'NEW' 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
mark other operation: 'NEW' 'other:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' '-'.
INSERT/UPDATE: <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c 3cffcc0b0b2fe214aa51b2ed50e3c0511ff45104
Inserted/updated <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c rows matched: 1
Checking for deleted files <TESTBASE>/test recursive.
File <TESTBASE>/test. Hostname: local 
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
get dirty host
dirty host other 
dirty host peer 
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11 ''
DIRTY LOOKUP: '<TESTBASE>/test/local/recursive/1/2/3/4/5' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
uid dennis gid schafroth
Updating (MOD_DIR) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/recursive/1/2/3/4/5
CONN peer < SIG %25test%25/recursive/1/2/3/4/5 user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'ERROR (Path not found): <TESTBASE>/test'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5 RC -13
PATH MISSING: '<TESTBASE>/test'
PATH MISSING (decoded): '<TESTBASE>/test'
UPDATE_DIRECTORY: 0
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
uid dennis gid schafroth
creating directory <TESTBASE>/test/local
CONN peer < MKDIR %25test%25 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive
CONN peer < MKDIR %25test%25/recursive - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1
CONN peer < MKDIR %25test%25/recursive/1 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1/2
CONN peer < MKDIR %25test%25/recursive/1/2 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1/2/3
CONN peer < MKDIR %25test%25/recursive/1/2/3 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
uid dennis gid schafroth
creating directory <TESTBASE>/test/local/recursive/1/2/3/4
CONN peer < MKDIR %25test%25/recursive/1/2/3/4 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
UPDATE_DIRECTORY: 4
Fixed missing path for file <TESTBASE>/test/local/recursive/1/2/3/4/5
has links: file <TESTBASE>/test/local/recursive/1/2/3/4/5 checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: -13
CONN peer < MKDIR %25test%25/recursive/1/2/3/4/5 - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: -13.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5 (0)
Directory time <TESTBASE>/test/local/recursive/1/2/3/4 <TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
uid dennis gid schafroth
Updating (NEW) 'peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
CONN peer < SIG %25test%25/recursive/1/2/3/4/5/file.c user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c RC 32
has links: file <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c checktxt 'v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=11' 1 true
CONN peer < CREATE %25test%25/recursive/1/2/3/4/5/file.c - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (send data).'
read_conn_status 'OK (send data).' 0
CREATE <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c 11
Sending octet-stream of 11 bytes
CONN peer < octet-stream 11

Reading chunk 11 bytes of 11 from file
Writing chunk 11 bytes of 11
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/recursive/1/2/3/4/5/file.c (0)
Directory time <TESTBASE>/test/local/recursive/1/2/3/4/5 <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
SETTIME peer:<TESTBASE>/test/local/recursive/1/2/3/4/5
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4/5
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2/3/4/5 0.
CONN peer < SETTIME %25test%25/recursive/1/2/3/4/5 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
SETTIME peer:<TESTBASE>/test/local/recursive/1/2/3/4
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/recursive/1/2/3/4
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/recursive/1/2/3/4 0.
CONN peer < SETTIME %25test%25/recursive/1/2/3/4 
CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 65536
Redis closed.
csync_config_destroy
csync_config_destroy end
