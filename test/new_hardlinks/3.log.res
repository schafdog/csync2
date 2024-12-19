cmd u "3 two new files hardlinked (update)" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
Got octet-stream 12
Receiving 12 bytes (octet-stream)..
Sending octet-stream of 10 bytes
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Got octet-stream 32
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
clear dirty HARDLINK
