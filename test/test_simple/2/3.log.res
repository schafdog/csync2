cmd M "New local/new_file 'N' all" local peer test
Config-File:   csync2_pgsql_local.cfg
My hostname is local.
Database File: pgsql://csync2:csync238@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
  MKDIR	local	peer	<TESTBASE>/test/local	1	1
  NEW	local	peer	<TESTBASE>/test/local/.Test	2	2
  NEW	local	peer	<TESTBASE>/test/local/A	2	2
  NEW	local	peer	<TESTBASE>/test/local/new_file 'N' all	2	2
