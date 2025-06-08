 <TESTBASE>/test/local
 <TESTBASE>/test/local/usr
 <TESTBASE>/test/local/usr/local
 <TESTBASE>/test/local/usr/local/abc
 <TESTBASE>/test/local/usr/local/def
 <TESTBASE>/test/local/usr/local/def/hej
 <TESTBASE>/test/local/usr/local/sbin
 <TESTBASE>/test/local/usr/local/sbin/hej
(8 rows)

 other    | <TESTBASE>/test/local                    | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr                | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local          | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/abc      | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/def      | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/sbin     | MKDIR     |             |  1
 other    | <TESTBASE>/test/local/usr/local/def/hej  | NEW       | ../sbin/hej |  2
 other    | <TESTBASE>/test/local/usr/local/sbin/hej | NEW       |             |  2
(8 rows)

