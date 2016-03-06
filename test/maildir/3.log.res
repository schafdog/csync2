cmd x "New Maildir/new/1434.M21,S=6631,W=6764 with transit in tmp " local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp (not synced) .
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' '(null)'
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new (not synced) .
csync_check_file_same_dev_inode /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' '-'.
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Connecting to host peer (PLAIN) ...
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new/1434.M21,S=6631,W=6764
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new' ''
Updating (MOD_DIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Finished succesfully.
