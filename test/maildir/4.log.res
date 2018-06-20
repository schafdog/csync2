cmd x "move Maildir/new/1434.M21,S=6631,W=6764 Maildir/cur/1434.M21,S=6631,W=6764:2," local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new rows affected: 1
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur rows affected: 1
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, 
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '(null)'
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer 0xb7a2d0 
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new
Updating (MV) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764'
Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
Finished succesfully.
