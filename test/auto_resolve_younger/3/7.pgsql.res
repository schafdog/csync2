----------------------------------------------------------------
 <TESTBASE>/test/local
 <TESTBASE>/test/local/auto
 <TESTBASE>/test/local/auto/younger
 <TESTBASE>/test/local/auto/younger/local_oldest
(4 rows)

----------+----------------------------------------------------------------+-----------+----------------------------------------------------------------+-----
 other    | <TESTBASE>/test/local                           | MKDIR     |       |   1
 other    | <TESTBASE>/test/local/auto                      | MKDIR     |       |   1
 other    | <TESTBASE>/test/local/auto/younger              | MKDIR     |       |   1
 other    | <TESTBASE>/test/local/auto/younger/local_oldest | NEW       |       |   2
 peer     | <TESTBASE>/test/local/auto/younger/local_oldest | NEW       |       |   2
 peer     | <TESTBASE>/test/local                           | MKDIR     |       | 129
 peer     | <TESTBASE>/test/local/auto                      | MKDIR     |       | 129
 peer     | <TESTBASE>/test/local/auto/younger              | MKDIR     |       | 129
(8 rows)

