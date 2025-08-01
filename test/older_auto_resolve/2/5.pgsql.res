 <TESTBASE>/test/local
 <TESTBASE>/test/local/auto
 <TESTBASE>/test/local/auto/older
 <TESTBASE>/test/local/auto/older/update_both
(4 rows)

 other    | <TESTBASE>/test/local                        | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/auto                   | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/auto/older             | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/auto/older/update_both | NEW       |       |  2
 peer     | <TESTBASE>/test/local/auto/older/update_both | NEW       |       |  2
(5 rows)

