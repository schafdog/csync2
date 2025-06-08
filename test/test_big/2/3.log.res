cmd T "List daemon" local peer test/local
Config-File:   csync2_mysql_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@127.0.0.1/csync2_local
DB Version:    2
IP Version:    IPv4
Default encoding utf8mb4
db_schema_version: 2
csync_insynctest_all: get all groups 
insynctest_all: Adding host local
Adding peer: peer
Adding peer: other
Check peername 
Check peername 
Running in-sync check for local <-> peer for file <TESTBASE>/test/local.
Connecting to host peer (PLAIN) ...
Connecting to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
CONN peer < LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 

CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=102400000	<TESTBASE>/test/peer/big_file'
db_sql_list_file local <-> peer <TESTBASE>/test/peer/big_file
D	local	peer	<TESTBASE>/test/peer/big_file
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=102400000 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	<TESTBASE>/test/peer'
db_sql_list_file local <-> peer <TESTBASE>/test/peer
D	local	peer	<TESTBASE>/test/peer
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir peer
>>> --- local
CONN peer > 'OK (cmd_finished).'
End of query results: OK (cmd_finished).CONN peer < BYE

CONN peer > 'OK (cu_later).'
