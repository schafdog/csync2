cmd u "8 more files hardlinked (updated)" local peer test
Connecting to redis localhost:6379
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' ''
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
Remote HARDLINK file (/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5) not identical. Need patching. RC = 32
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4: 32
Not a candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4: 0
Candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
clear dirty HARDLINK
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
Updating (MARK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' ''
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
check_update_hardlink result: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5: 0
Candidate for HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
clear dirty HARDLINK
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
