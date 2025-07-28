cmd T "List daemon" local peer test/local
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
<<<<<<< HEAD
GIT:           c150c89d8255014e65a1e0903401ab4fe3ff8a25-dirty
Opening shared library libpq.dylib
Reading symbols from shared library libpq.dylib
=======
GIT:           14407d2a82844ea3e9d2807313d34f7947c7fc2e-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
>>>>>>> cpp-client-server
Connecting to redis localhost:6379
Match (+): <TESTBASE>/test/local on <TESTBASE>/test/local
csync_insynctest_all: flags 1 
csync_insynctest_all: get all groups 
insynctest_all: Adding host local
Adding peer: peer
Adding peer: other
Check peername 
Check peername 
Running in-sync check for local <-> peer for file <TESTBASE>/test/local.
Connecting to host peer (PLAIN) ...
Looking for alternative host:port for peer
Using alternative port to localhost:30861 
Connecting to localhost:30861 from local
Using specific address 127.x.x.x
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
<<<<<<< HEAD
=======
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 

CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4	<TESTBASE>/test/peer/new_file 'N' all'
Fetched tuple from peer: <TESTBASE>/test/peer/new_file 'N' all [v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4]
DbSql::list_file local <-> peer <TESTBASE>/test/peer/new_file 'N' all
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 
csync_cmpchecktxt B: --- 
D	local	peer	<TESTBASE>/test/peer/new_file 'N' all
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=4 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0	<TESTBASE>/test/peer/A'
Fetched tuple from peer: <TESTBASE>/test/peer/A [v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0]
DbSql::list_file local <-> peer <TESTBASE>/test/peer/A
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 
csync_cmpchecktxt B: --- 
D	local	peer	<TESTBASE>/test/peer/A
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0	<TESTBASE>/test/peer/.Test'
Fetched tuple from peer: <TESTBASE>/test/peer/.Test [v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0]
DbSql::list_file local <-> peer <TESTBASE>/test/peer/.Test
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 
csync_cmpchecktxt B: --- 
D	local	peer	<TESTBASE>/test/peer/.Test
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=<USER>:group=<GROUP>:type=reg:size=0 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir	<TESTBASE>/test/peer'
Fetched tuple from peer: <TESTBASE>/test/peer [v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir]
DbSql::list_file local <-> peer <TESTBASE>/test/peer
csync_cmpchecktxt A: v2:mtime=<MTIME>mode=16877:user=<USER>:group=<GROUP>:type=dir 
csync_cmpchecktxt B: --- 
D	local	peer	<TESTBASE>/test/peer
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=16877:user=<USER>:group=<GROUP>:type=dir peer
>>> --- local
CONN peer > 'OK (cmd_finished).'
End of query results: OK (cmd_finished).
count_diff: 4
CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4096
Redis closed.
csync_config_destroy
csync_config_destroy end
>>>>>>> cpp-client-server
