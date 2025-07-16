 <TESTBASE>/test/local
 <TESTBASE>/test/local/Maildir
 <TESTBASE>/test/local/Maildir/cur
 <TESTBASE>/test/local/Maildir/cur/123,Sab
 <TESTBASE>/test/local/Maildir/tmp
 <TESTBASE>/test/local/Maildir/.Trash
 <TESTBASE>/test/local/Maildir/.Trash/cur
 <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab
(8 rows)

 other    | <TESTBASE>/test/local                            | MKDIR     |                                                                                |  1
 other    | <TESTBASE>/test/local/Maildir                    | MKDIR     |                                                                                |  1
 other    | <TESTBASE>/test/local/Maildir/cur                | MKDIR     |                                                                                |  1
 other    | <TESTBASE>/test/local/Maildir/tmp                | MKDIR     |                                                                                |  1
 other    | <TESTBASE>/test/local/Maildir/.Trash             | MKDIR     |                                                                                |  1
 other    | <TESTBASE>/test/local/Maildir/.Trash/cur         | MKDIR     |                                                                                |  1
 other    | <TESTBASE>/test/local/Maildir/cur/123,Sab        | NEW       |                                                                                |  2
 other    | <TESTBASE>/test/local/Maildir/.Trash/cur/123,Sab | HARDLINK  | <TESTBASE>/test/local/Maildir/cur/123,Sab | 32
(8 rows)

