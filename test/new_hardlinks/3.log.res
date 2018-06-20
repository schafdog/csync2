cmd u "3 two new files hardlinked (update)" local peer test
Got dirty files from host peer 0x215a5f0 
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
clear dirty HARDLINK
Finished succesfully.
