cmd u "4 create directories (update)" local peer test
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
GIT:           2113a525ccc1fcabc8e82217ec462ddb7e1118e2-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
Connecting to redis localhost:6379
get dirty host
dirty host other 
dirty host peer 
DIRTY LOOKUP: '<TESTBASE>/test/local/auto/younger' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto/younger v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
DIRTY LOOKUP: '<TESTBASE>/test/local/auto' 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir'
compare file with pattern <TESTBASE>/test
dirty: peer:<TESTBASE>/test/local/auto v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir ''
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
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/auto' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto
CONN peer < SIG %25test%25/auto user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/auto RC 32
has links: file <TESTBASE>/test/local/auto checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 3 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25/auto - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/auto (0)
Directory time <TESTBASE>/test/local <TESTBASE>/test/local/auto
Match (+): <TESTBASE>/test/local/auto/younger on <TESTBASE>/test/local/auto/younger
uid dennis gid schafroth
Updating (MKDIR) 'peer:<TESTBASE>/test/local/auto/younger' ''
csync_update_file_sig_rs_diff peer:<TESTBASE>/test/local/auto/younger
CONN peer < SIG %25test%25/auto/younger user/group <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'OK (not_found).'
update_file_sig <TESTBASE>/test/local/auto/younger RC 32
has links: file <TESTBASE>/test/local/auto/younger checktxt 'v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir' 2 false
MKDIR rc: 32
CONN peer < MKDIR %25test%25/auto/younger - <UID> <GID> <USER> <GROUP> <BLKSIZE> - <DIRSIZE> 
CONN peer > 'IDENT (cmd_finished).'
read_conn_status 'IDENT (cmd_finished).' 4
before setown/settime/setmod on OK. rc 4 sig_rc: 32.
After setown/settime/setmod on OK. rc 4.
Clear dirty peer:<TESTBASE>/test/local/auto/younger (0)
Directory time <TESTBASE>/test/local/auto <TESTBASE>/test/local/auto/younger
SETTIME peer:<TESTBASE>/test/local/auto
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local/auto
uid dennis gid schafroth
update_directory: Setting directory time <TESTBASE>/test/local/auto 0.
CONN peer < SETTIME %25test%25/auto 
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
MODE 4
Redis closed.
csync_config_destroy
csync_config_destroy end
