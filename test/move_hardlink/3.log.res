cmd x "3 Maildir tmp file" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows affected: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir rows affected: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp rows affected: 1
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123' '-'.
mark other operation: 'NEW' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123 rows affected: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur rows affected: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash rows affected: 1
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur rows affected: 1
Checking for deleted files /export/home/dennis/Projects/csync2/csync2/test/test recursive.
Got dirty files from host peer
Connecting to host peer (PLAIN) ...
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Updating (MKDIR) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
Locking /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123
Updating (NEW) 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123' ''
Unlocking file: /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123
