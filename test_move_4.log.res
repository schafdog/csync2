cmd c move B C => mv Z C (check)
Config-File:   csync2_local.cfg
My hostname is local.
Database File: mysql://csync2_local:csync2_local@localhost/csync2_local
DB Version:    2
IP Version:    IPv4
Opening shared library libmysqlclient.so
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/local ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/local recursive.
mark other operation: RM peer:/export/home/dennis/Projects/csync2/csync2/test/local/B.
mark other: Old operation: MV '/export/home/dennis/Projects/csync2/csync2/test/local/B' '/export/home/dennis/Projects/csync2/csync2/test/local/Z' mark operation MV->RM peer '/export/home/dennis/Projects/csync2/csync2/test/local/B' '/export/home/dennis/Projects/csync2/csync2/test/local/B' '/export/home/dennis/Projects/csync2/csync2/test/local/Z'.
Checking /export/home/dennis/Projects/csync2/csync2/test/local/* ..
New file: /export/home/dennis/Projects/csync2/csync2/test/local/C
check_dirty (mod): before mark (all) 
mark other operation: NEW peer:/export/home/dennis/Projects/csync2/csync2/test/local/C.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/test/local/Z' '' mark operation RM->NEW => MOVE peer '/export/home/dennis/Projects/csync2/csync2/test/local/C' '/export/home/dennis/Projects/csync2/csync2/test/local/Z'.
Finished succesfully.
