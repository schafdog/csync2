cmd u "3 two new files hardlinked (update)" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local' MKDIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new' MKDIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
Unable to MOVE/LINK: both NEW
check hardlink: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
While syncing file: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
ERROR from peer: PATCH (/export/home/dennis/Projects/csync2/csync2/tests/test/peer/new/new_file)
Failed to hard link /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
HARDLINK failed. Continuing with PATCH
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
Unable to MOVE/LINK: both NEW
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked
?M: peer            /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file' NEW ''
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked to /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
check hardlink: /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/tests/test/local/new/new_file
Finished with 1 errors.
