----------------------------------------------------------------
 <TESTBASE>/test/local
 <TESTBASE>/test/local/different
(2 rows)

----------+----------------------------------------------------------------+-----------+----------------------------------------------------------------+----
 other    | <TESTBASE>/test/local           | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/different | NEW       |       |  2
 peer     | <TESTBASE>/test/local/different | NEW       |       |  2
(3 rows)

