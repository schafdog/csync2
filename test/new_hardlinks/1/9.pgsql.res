 <TESTBASE>/test/local
 <TESTBASE>/test/local/new
 <TESTBASE>/test/local/new/hardlinked
 <TESTBASE>/test/local/new/hardlinked_2
 <TESTBASE>/test/local/new/hardlinked_3
 <TESTBASE>/test/local/new/hardlinked_4
 <TESTBASE>/test/local/new/hardlinked_5
 <TESTBASE>/test/local/new/hardlinked_6
 <TESTBASE>/test/local/new/new_file
 <TESTBASE>/test/local/new/was_hardlink
(10 rows)

 other    | <TESTBASE>/test/local                  | MKDIR     |                                                                |   1
 other    | <TESTBASE>/test/local/new              | MKDIR     |                                                                |   1
 other    | <TESTBASE>/test/local/new/new_file     | NEW       |                                                                |   2
 other    | <TESTBASE>/test/local/new/was_hardlink | NEW       |                                                                |   2
 peer     | <TESTBASE>/test/local/new/was_hardlink | NEW       |                                                                |   2
 other    | <TESTBASE>/test/local/new/hardlinked   | HARDLINK  | <TESTBASE>/test/local/new/new_file     |  32
 other    | <TESTBASE>/test/local/new/hardlinked_2 | HARDLINK  | <TESTBASE>/test/local/new/hardlinked   |  32
 other    | <TESTBASE>/test/local/new/hardlinked_3 | HARDLINK  | <TESTBASE>/test/local/new/hardlinked   |  32
 other    | <TESTBASE>/test/local/new/hardlinked_6 | HARDLINK  | <TESTBASE>/test/local/new/was_hardlink |  32
 peer     | <TESTBASE>/test/local/new/hardlinked_6 | HARDLINK  | <TESTBASE>/test/local/new/was_hardlink |  32
 peer     | <TESTBASE>/test/local/new              | MKDIR     |                                                                | 129
(11 rows)

