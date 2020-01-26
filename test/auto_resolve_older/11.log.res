cmd x "11 clean (older)" local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/same_content' '-'.
mark operation NEW -> RM peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/same_content deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/same_content' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/same_content deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/local_oldest' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/local_oldest' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/local_oldest deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older' '-'.
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto' '-'.
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto) rc: -11 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 
Do not auto-resolve conflict by compare: This is a removal.
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/local_oldest
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/local_oldest is already up to date on peer.
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest
peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older/peer_oldest is already up to date on peer.
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older
Auto resolve method OLDER 3 for peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto/older 
Do not auto-resolve conflict by compare: This is a removal.
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/auto
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/auto
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/auto) rc: -11 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer) rc: -11 
