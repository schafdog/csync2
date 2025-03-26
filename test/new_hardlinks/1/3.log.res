cmd u "3 two new files hardlinked (update)" local peer test
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' ''
CREATE /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 4
PATCH hardlink: checking dirty hardlinks: peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 2049 52694272 v2:mtime=xxxxxxxxxx:mode=33188:user=dennis:group=schafroth:type=reg:size=4 
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
clear dirty HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
