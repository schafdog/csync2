 <TESTBASE>/test/local
 <TESTBASE>/test/local/bad.link
 <TESTBASE>/test/local/new_file 'N' all
 <TESTBASE>/test/local/new_file 'N' all.link
(4 rows)

 other    | <TESTBASE>/test/local                       | MKDIR     |                  |  1
 other    | <TESTBASE>/test/local/bad.link              | NEW       | missing          |  2
 other    | <TESTBASE>/test/local/new_file 'N' all      | NEW       |                  |  2
 other    | <TESTBASE>/test/local/new_file 'N' all.link | NEW       | new_file 'N' all |  2
(4 rows)

