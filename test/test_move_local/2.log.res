cmd c "move A Z => new Z " local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MOD_DIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW peer:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
mark other operation: 'MOD_DIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other: MOD_DIR(129) Old operation: MKDIR(1) '/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
mark operation NEW -> MOD => NEW other:/export/home/dennis/Projects/csync2/csync2/test/test/local (not synced) .
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
Found MOVE /export/home/dennis/Projects/csync2/csync2/test/test/local/A -> /export/home/dennis/Projects/csync2/csync2/test/test/local/Z 
mark other operation: 'MV' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' ''
mark operation NEW->MV => NEW peer '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
mark other operation: 'MV' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
mark other: MV(16) Old operation: NEW(2) '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' ''
mark operation NEW->MV => NEW other '/export/home/dennis/Projects/csync2/csync2/test/test/local/Z' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A' '/export/home/dennis/Projects/csync2/csync2/test/test/local/A'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Z rows matched: 0
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
