----------------------------------------------------------------
 <TESTBASE>/test/local
 <TESTBASE>/test/local/new
 <TESTBASE>/test/local/new/hardlinked
 <TESTBASE>/test/local/new/new_file
(4 rows)

----------+----------------------------------------------------------------+-----------+----------------------------------------------------------------+----
 other    | <TESTBASE>/test/local                | MKDIR     |                                                                         |  1
 other    | <TESTBASE>/test/local/new            | MKDIR     |                                                                         |  1
 other    | <TESTBASE>/test/local/new/new_file   | NEW       |                                                                         |  2
 other    | <TESTBASE>/test/local/new/hardlinked | HARDLINK  | <TESTBASE>/test/local/new/new_file | 32
(4 rows)

