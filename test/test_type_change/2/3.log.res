cmd T "3 List daemon" local peer test/local
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
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
Using specific address 127.0.0.2
Connected to localhost:30861 
CONN peer < CONFIG 

CONN peer > 'OK (cmd_finished).'
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
CONN peer < LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 

CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4	<TESTBASE>/test/peer/type_change/new_file 'N' all'
DbSql::list_file local <-> peer <TESTBASE>/test/peer/type_change/new_file 'N' all
D	local	peer	<TESTBASE>/test/peer/type_change/new_file 'N' all
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	<TESTBASE>/test/peer/type_change'
DbSql::list_file local <-> peer <TESTBASE>/test/peer/type_change
D	local	peer	<TESTBASE>/test/peer/type_change
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	<TESTBASE>/test/peer'
DbSql::list_file local <-> peer <TESTBASE>/test/peer
D	local	peer	<TESTBASE>/test/peer
'<TESTBASE>/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir peer
>>> --- local
CONN peer > 'OK (cmd_finished).'
End of query results: OK (cmd_finished).
CONN peer < BYE

CONN peer > 'OK (cu_later).'
