cmd x "4 more files hardlinked (x)" local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new rows affected: 1
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 rows affected: 1
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: HARDLINK(32) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/new
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
clear dirty HARDLINK
Updating (HARDLINK) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
do hardlink check /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file 
Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
clear dirty HARDLINK
Finished succesfully.
