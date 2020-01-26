cmd x "Clean up" local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link' '-'.
mark operation NEW -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link deleted before syncing. Removing from dirty.
mark other operation: 'RM' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'RM' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark operation MKDIR -> RM other:/export/home/dennis/Projects/csync2/csync2/test/test/local deleted before syncing. Removing from dirty.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
While syncing file: /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
ERROR from peer: File is also marked dirty here! (/export/home/dennis/Projects/csync2/csync2/test/test/peer/new_file 'N' all) rc: -11 
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link
Deleting peer:/export/home/dennis/Projects/csync2/csync2/test/test/local
