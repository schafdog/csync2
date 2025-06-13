 <TESTBASE>/test/local
 <TESTBASE>/test/local/recursive
 <TESTBASE>/test/local/recursive/1
 <TESTBASE>/test/local/recursive/1/2
 <TESTBASE>/test/local/recursive/1/2/3
 <TESTBASE>/test/local/recursive/1/2/3/4
 <TESTBASE>/test/local/recursive/1/2/3/4/5
 <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c
(8 rows)

 other    | <TESTBASE>/test/local                            | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/recursive                  | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/recursive/1                | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/recursive/1/2              | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/recursive/1/2/3            | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/recursive/1/2/3/4          | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/recursive/1/2/3/4/5        | MKDIR     |       |  1
 other    | <TESTBASE>/test/local/recursive/1/2/3/4/5/file.c | NEW       |       |  2
(8 rows)

