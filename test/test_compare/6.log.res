cmd T "List daemon (differences)" local
csync_insynctest_all: flags 1 
csync_insynctest_all: get all groups 
insynctest_all: Adding host local
Adding peer: peer
Adding peer: other
Check peername 
Check peername 
Running in-sync check for local <-> peer for file /export/home/dennis/Projects/csync2/csync2/test/test/local.
Connecting to host peer (PLAIN) ...
R	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/local
db_sql_list_file  peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
R	local	peer	/export/home/dennis/Projects/csync2/csync2/test/test/peer
db_sql_list_file local <-> peer /export/home/dennis/Projects/csync2/csync2/test/test/local
db_sql_list_file  peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
Finished succesfully.
