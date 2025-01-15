cmd T "List daemon" local peer test/local
csync_hostinfo (nil)
standalone: 0 server_standalone > 0: 0
Mode: 4096 Flags: 1 PID: 2657541
Config-File:   csync2_pgsql_local.cfg
Prefix 'test' is set to '/export/home/dennis/Projects/csync2/csync2/test/test/local'.
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
GIT:           42ec618cadb2cff3bcf7925107f9c9ae320ed28c-dirty
Opening shared library libpq.so
Reading symbols from shared library libpq.so
csync2_db_SQL: update file set filename = NULL where filename = NULL 
csync2_db_SQL: update host set host = NULL where host = NULL
db_schema_version: 2
Connecting to redis localhost:6379
Match (+): /export/home/dennis/Projects/csync2/csync2/test/test/local on /export/home/dennis/Projects/csync2/csync2/test/test/local
csync_insynctest_all: flags 1 
csync_insynctest_all: get all groups 
insynctest_all: Adding host local
Adding peer: peer
Adding peer: other
Check peername 
Check peername 
Running in-sync check for local <-> peer for file /export/home/dennis/Projects/csync2/csync2/test/test/local.
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < DEBUG 3

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
read_conn_status 'OK (cmd_finished).' 0
CONN peer < LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 

CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=0	/export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test'
Fetched tuple from peer: /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test [v2:mtime=1736899562:mode=33188:user=dennis:group=schafroth:type=reg:size=0]
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test
SQL: SELECT checktxt, filename FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test'  AND  hostname = 'local' ORDER BY filename
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1736899562:mode=33188:user=dennis:group=schafroth:type=reg:size=0 
csync_cmpchecktxt B: --- 
D	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer/.Test
'/export/home/dennis/Projects/csync2/csync2/test/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=0 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4	/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all'
Fetched tuple from peer: /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all [v2:mtime=1736899562:mode=33188:user=dennis:group=schafroth:type=reg:size=4]
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
SQL: SELECT checktxt, filename FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file ''N'' all'  AND  hostname = 'local' ORDER BY filename
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1736899562:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
csync_cmpchecktxt B: --- 
D	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
'/export/home/dennis/Projects/csync2/csync2/test/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=0	/export/home/dennis/Projects/csync2/csync2/test/test/peer/A'
Fetched tuple from peer: /export/home/dennis/Projects/csync2/csync2/test/test/peer/A [v2:mtime=1736899562:mode=33188:user=dennis:group=schafroth:type=reg:size=0]
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/peer/A
SQL: SELECT checktxt, filename FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer/A'  AND  hostname = 'local' ORDER BY filename
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1736899562:mode=33188:user=dennis:group=schafroth:type=reg:size=0 
csync_cmpchecktxt B: --- 
D	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer/A
'/export/home/dennis/Projects/csync2/csync2/test/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=0 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	/export/home/dennis/Projects/csync2/csync2/test/test/peer'
Fetched tuple from peer: /export/home/dennis/Projects/csync2/csync2/test/test/peer [v2:mtime=1736899562:mode=16877:user=dennis:group=schafroth:type=dir]
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/peer
SQL: SELECT checktxt, filename FROM file WHERE  filename = '/export/home/dennis/Projects/csync2/csync2/test/test/peer'  AND  hostname = 'local' ORDER BY filename
SQL Query finished.
csync_cmpchecktxt A: v2:mtime=1736899562:mode=16877:user=dennis:group=schafroth:type=dir 
csync_cmpchecktxt B: --- 
D	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer
'/export/home/dennis/Projects/csync2/csync2/test/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir peer
>>> --- local
CONN peer > 'OK (cmd_finished).'
End of query results: OK (cmd_finished).count_diff: 4CONN peer < BYE

CONN peer > 'OK (cu_later).'
read_conn_status 'OK (cu_later).' 0
MODE 4096
Redis closing: 0x55ee2a63b4a0
Redis closed.
SQL: SELECT command, logfile FROM action
SQL Query finished.
Closing db: 0x55ee2a63b180
Closed db: 0x55ee2a63b180
Closed db: 0x55ee2a63b180
csync_config_destroy
csync_config_destroy end
