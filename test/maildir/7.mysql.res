+----------------------------------------------------------------------------------------------------------+
| filename                                                                                                 |
+----------------------------------------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                                               |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir                                       |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash                                |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur                            |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                                   |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST       |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new                                   |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                                   |
+----------------------------------------------------------------------------------------------------------+
+----------+----------------------------------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------------------------------+------+
| peername | filename                                                                                                 | operation | other                                                                                              | op   |
+----------+----------------------------------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------------------------------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                                               | MKDIR     | NULL                                                                                               |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir                                       | MKDIR     | NULL                                                                                               |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash                                | MKDIR     | NULL                                                                                               |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur                            | MKDIR     | NULL                                                                                               |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                                   | MKDIR     | NULL                                                                                               |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/new                                   | MKDIR     | NULL                                                                                               |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                                   | MKDIR     | NULL                                                                                               |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST       | NEW       | NULL                                                                                               |    2 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST       | MV        | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,S  |   16 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST |   32 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST |   32 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur                            | MKDIR     | NULL                                                                                               |  129 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                                   | MKDIR     | NULL                                                                                               |  129 |
+----------+----------------------------------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------------------------------+------+
