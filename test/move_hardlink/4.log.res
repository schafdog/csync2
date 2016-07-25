cmd c "4 Read and deleted (check)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab 
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'.
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123' '(null)'
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'.
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (not synced) .
Found HARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab 
mark other operation: 'HARDLINK' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'.
mark other: Old operation: MV '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123'
mark other operation: 'HARDLINK' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab' '(null)'
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Finished succesfully.
