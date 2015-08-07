cmd u "3 two new files hardlinked (update)" local
Reading symbols from shared library libmysqlclient.so
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' MKDIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' MKDIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
Unable to MOVE/LINK: both NEW
Unable to MOVE/LINK: both NEW
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file to /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' NEW ''
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked to /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
check hardlink: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
Finished succesfully.
