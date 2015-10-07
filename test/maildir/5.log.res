cmd x "move Maildir/cur/1434.M21,S=6631,W=6764:2, Maildir/cur/1434.M21,S=6631,W=6764:2,S (mark read)" local
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '(null)' 
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2, deleted before syncing. Removing from dirty.
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)' 
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,' '(null)' 
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' '-'.
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' MOD_DIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S
Different digest for 6cb0c34bcc2b89205c6601b4edaa2eace19ec981 (null) Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,
Finished succesfully.
