cmd x "9 Remove files. Removed from other" local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (not synced) .
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' '-'.
mark operation HARDLINK -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
Got octet-stream 0
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S
Got octet-stream 32
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST
Got octet-stream 32
