cmd T "3 List daemon" local peer test/local
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
db_schema_version: 2
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
CONN peer < DEBUG 2

CONN peer > 'OK (cmd_finished).'
CONN peer < HELLO local

CONN peer > 'OK (cmd_finished).'
CONN peer < LIST peer %25test%25 9iNlOKBHPfeAtRpsCgaQqTwKuGmEVZGB4vCM2ALNvBDDKIZDnoAaK0209kviFLAV 1 

CONN peer > 'v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4	/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all'
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
D	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change/new_file 'N' all
'/export/home/dennis/Projects/csync2/csync2/test/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change'
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
D	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer/type_change
'/export/home/dennis/Projects/csync2/csync2/test/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir peer
>>> --- local
CONN peer > 'v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir	/export/home/dennis/Projects/csync2/csync2/test/test/peer'
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/peer
D	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer
'/export/home/dennis/Projects/csync2/csync2/test/test/local' is different:
>>> v2:mtime=xxxxxxxxxx:mode=16877:user=dennis:group=schafroth:type=dir peer
>>> --- local
CONN peer > 'OK (cmd_finished).'
End of query results: OK (cmd_finished).CONN peer < BYE

CONN peer > 'OK (cu_later).'
