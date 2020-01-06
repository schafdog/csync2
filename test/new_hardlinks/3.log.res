cmd u "3 two new files hardlinked (update)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
Locking '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
clear dirty HARDLINK
Deleting key '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked'
