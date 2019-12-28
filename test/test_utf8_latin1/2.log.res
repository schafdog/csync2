cmd x "New local/ÆØÅ Café with utf8 and latin1" local peer test
Connecting to redis localhost:6379
Running recursive check for /export/home/dennis/Projects/csync2/csync2/test/test ...
Checking recursive for modified files /export/home/dennis/Projects/csync2/csync2/test/test 
mark other operation: 'MKDIR' 'peer:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
mark other operation: 'MKDIR' 'other:/export/home/dennis/Projects/csync2/csync2/test/test/local' '-'.
Inserted/updated /export/home/dennis/Projects/csync2/csync2/test/test/local rows matched: 0
Error in PQexec: ERROR:  lexical error: invalid UTF-8 byte sequence
DETAIL:  source SQL:
                                                                                                            ^
HINT:  try \h SELECT
Database Error: Checking File [-1]: ERROR:  lexical error: invalid UTF-8 byte sequence
DETAIL:  source SQL:
                                                                                                            ^
HINT:  try \h SELECT
Binary file (standard input) matches
