cmd m "6 more files hardlinked (mark)" local peer test
Config-File:   csync2_<DB>_<PEER>.cfg
My hostname is local.
Database File: <CONN_STR>
DB Version:    2
IP Version:    IPv4
Not in one of my groups: <TESTBASE>/test ()
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local' '-'.
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new' '-'.
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked' '-'.
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_2' '-'.
check_old_operation: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' '(null)'
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_3' '-'.
check_old_operation: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' '(null)'
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_4' '-'.
check_old_operation: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' '(null)'
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/hardlinked_5' '-'.
check_old_operation: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' '(null)'
mark other operation: 'MARK' 'peer:<TESTBASE>/test/local/new/new_file' '-'.
check_old_operation: MARK(0) Old operation: MARK(0) '<TESTBASE>/test/local/new/hardlinked' '(null)'
