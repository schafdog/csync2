cmd x "New local/√Ü√ò√Ö Caf√© with utf8 and latin1" local peer test
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows affected: 1
mark other operation: 'NEW' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local/∆ÿ≈ CafÈ.latin1' '-'.
MySql Warning: Incorrect string value: '\xC6\xD8\xC5 Ca...' for column 'filename' at row 1
Database Error: Deleting old dirty file entries [1]:  on executing DELETE FROM dirty WHERE filename = '/export/home/dennis/Projects/csync2/csync2/test/test/local/∆ÿ≈ CafÈ.latin1' AND peername like 'peer'
