 <TESTBASE>/test/local
 <TESTBASE>/test/local/newdir
 <TESTBASE>/test/local/newdir/C
(3 rows)

 other    | <TESTBASE>/test/local          | MKDIR     |       |  1
 peer     | <TESTBASE>/test/local          | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/newdir   | MKDIR     |       |  1
 peer     | <TESTBASE>/test/local/newdir   | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/newdir/C | NEW       |       |  2
 peer     | <TESTBASE>/test/local/newdir/C | NEW       |       |  2
(6 rows)

