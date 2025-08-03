 <TESTBASE>/test/local
 <TESTBASE>/test/local/new_file 'N' all
 <TESTBASE>/test/local/new_file 'N' all.link
(3 rows)

 other    | <TESTBASE>/test/local                       | MKDIR     |                  |  1
 other    | <TESTBASE>/test/local/new_file 'N' all      | NEW       |                  |  2
 other    | <TESTBASE>/test/local/new_file 'N' all.link | NEW       | new_file 'N' all |  2
(3 rows)

