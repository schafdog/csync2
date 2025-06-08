----------------------------------------------------------------
 <TESTBASE>/test/local
 <TESTBASE>/test/local/newdir
(2 rows)

----------+----------------------------------------------------------------+-----------+----------------------------------------------------------------+-----
 other    | <TESTBASE>/test/local        | MKDIR     |       |   1
 peer     | <TESTBASE>/test/local        | MKDIR     |       |   1
 other    | <TESTBASE>/test/local/A      | NEW       |       |   2
 peer     | <TESTBASE>/test/local/A      | NEW       |       |   2
 other    | <TESTBASE>/test/local/newdir | MKDIR     |       | 129
 peer     | <TESTBASE>/test/local/newdir | MKDIR     |       | 129
(6 rows)

