cmd c "5 more files hardlinked (mark)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 rows affected: 1
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file -> /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: HARDLINK(32) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4' '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file'.
mark other: HARDLINK(32) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file' '(null)'
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Finished succesfully.
