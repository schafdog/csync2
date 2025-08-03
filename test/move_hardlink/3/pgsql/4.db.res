 <TESTBASE>/test/local
 <TESTBASE>/test/local/Maildir
 <TESTBASE>/test/local/Maildir/.Trash
 <TESTBASE>/test/local/Maildir/.Trash/cur
 <TESTBASE>/test/local/Maildir/cur
 <TESTBASE>/test/local/Maildir/cur/123,Sab
 <TESTBASE>/test/local/Maildir/tmp
(7 rows)

 other    | <TESTBASE>/test/local                     | MKDIR     |                                                                            |   1
 other    | <TESTBASE>/test/local/Maildir             | MKDIR     |                                                                            |   1
 other    | <TESTBASE>/test/local/Maildir/.Trash      | MKDIR     |                                                                            |   1
 other    | <TESTBASE>/test/local/Maildir/.Trash/cur  | MKDIR     |                                                                            |   1
 other    | <TESTBASE>/test/local/Maildir/cur         | MKDIR     |                                                                            |   1
 other    | <TESTBASE>/test/local/Maildir/tmp         | MKDIR     |                                                                            |   1
 other    | <TESTBASE>/test/local/Maildir/cur/123,Sab | NEW       |                                                                            |   2
 peer     | <TESTBASE>/test/local/Maildir/cur/123,Sab | MV        | <TESTBASE>/test/local/Maildir/tmp/123 |  16
 peer     | <TESTBASE>/test/local/Maildir/cur         | MKDIR     |                                                                            | 129
 peer     | <TESTBASE>/test/local/Maildir/tmp         | MKDIR     |                                                                            | 129
(10 rows)

