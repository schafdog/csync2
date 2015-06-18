cmd x "Delete email: ln Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S. mv 1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST" local
Reading symbols from shared library libmysqlclient.so
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '(null)' 
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S deleted before syncing. Removing from dirty.
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '(null)' 
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur (not synced) .
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '(null)' 
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' '-'.
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other: Old operation: MKDIR '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '(null)' 
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur (not synced) .
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '-'.
mark other: Old operation: RM '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '(null)' 
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' '-'.
mark other: Old operation: NEW '/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' '(null)' 
Connecting to host peer (PLAIN) ...
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' MOD_DIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST to /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
Unable to MOVE/LINK: both NEW
check_link_move: Other file not found. Possible MOVE operation: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
OPERATION: MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S to /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
check move: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 
 Succes: MV /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' MOD_DIR ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Updating 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST' NEW ''
?M: peer            /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
csync_check_link_move: OPERATION MHARDLINK /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S to /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
check hardlink: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S 
 Hardlinking peer /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,ST
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434095335.M212861P2984.us1.schafroth.dk,S=6631,W=6764:2,S is already up to date on peer. 
Finished succesfully.
