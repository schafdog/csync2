 <TESTBASE>/test/local
 <TESTBASE>/test/local/new_file
(2 rows)

 other    | <TESTBASE>/test/local          | MKDIR     |       |  1
 peer     | <TESTBASE>/test/local          | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/new_file | NEW       |       |  2
 peer     | <TESTBASE>/test/local/new_file | NEW       |       |  2
(4 rows)

