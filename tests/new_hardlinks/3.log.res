cmd u "3 two new files hardlinked (update)" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
CONN peer < CONFIG 

CONN peer < HELLO local

Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
CONN peer < SIG %25test%25 user/group 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new' MKDIR ''
CONN peer < SIG %25test%25/new user/group 1000 1000 dennis schafroth 16877 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
CONN peer < MKDIR %25test%25/new - 1000 1000 dennis schafroth 16877 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked' NEW ''
CONN peer < SIG %25test%25/new/hardlinked user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
check hardlink: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
CONN peer < MKHARDLINK %25test%25/new/new_file %25test%25/new/hardlinked 
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
ERROR from peer: PATCH (/export/home/dennis/Projects/csync2/csync2/tests/test/peer/new/new_file)
Failed to hard link /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
HARDLINK failed. Continuing with PATCH
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
CONN peer < SIG %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
CONN peer < SIG %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
CONN peer < PATCH %25test%25/new/hardlinked - 1000 1000 dennis schafroth 33188 
CONN peer < octet-stream 11

csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
CONN peer < SIG %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
CONN peer < MKHARDLINK %25test%25/new/hardlinked %25test%25/new/new_file 
CONN peer < SIG %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
CONN peer < MKHARDLINK %25test%25/new/hardlinked %25test%25/new/new_file 
CONN peer < SETOWN %25test%25/new/hardlinked - 1000 1000 dennis 
CONN peer < SETMOD %25test%25/new/hardlinked 
CONN peer < SETTIME %25test%25/new/hardlinked 
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file' NEW ''
CONN peer < SIG %25test%25/new/new_file user/group 1000 1000 dennis schafroth 33188 
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
check hardlink: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
CONN peer < MKHARDLINK %25test%25/new/hardlinked %25test%25/new/new_file 
CONN peer < SETTIME %25test%25/new 
CONN peer < SETTIME %25test%25 
CONN peer < BYE

Finished with 1 errors.
