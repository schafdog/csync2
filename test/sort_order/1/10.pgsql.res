 <TESTBASE>/test/local
 <TESTBASE>/test/local/usr
 <TESTBASE>/test/local/usr/local
 <TESTBASE>/test/local/usr/local/abc
 <TESTBASE>/test/local/usr/local/def
 <TESTBASE>/test/local/usr/local/def/hej
 <TESTBASE>/test/local/usr/local/sbin
(7 rows)

 peer     | <TESTBASE>/test/local                   | MARK      |             |  0
 peer     | <TESTBASE>/test/local/usr               | MARK      |             |  0
 peer     | <TESTBASE>/test/local/usr/local         | MARK      |             |  0
 peer     | <TESTBASE>/test/local/usr/local/abc     | MARK      |             |  0
 peer     | <TESTBASE>/test/local/usr/local/def     | MARK      |             |  0
 peer     | <TESTBASE>/test/local/usr/local/def/hej | MARK      |             |  0
 peer     | <TESTBASE>/test/local/usr/local/sbin    | MARK      |             |  0
 other    | <TESTBASE>/test/local                   | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr               | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local         | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/abc     | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/def     | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/sbin    | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/def/hej | NEW       | ../sbin/hej |  2
(14 rows)

