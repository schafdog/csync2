+---------------------------------------------------------------------------------------+
| filename                                                                              |
+---------------------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                            |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir                    |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash             |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur         |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab        |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                |
+---------------------------------------------------------------------------------------+
+----------+---------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+------+
| peername | filename                                                                              | operation | other                                                                          | op   |
+----------+---------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                            | MKDIR     | NULL                                                                           |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir                    | MKDIR     | NULL                                                                           |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash             | MKDIR     | NULL                                                                           |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur         | MKDIR     | NULL                                                                           |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                | MKDIR     | NULL                                                                           |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                | MKDIR     | NULL                                                                           |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab        | NEW       | NULL                                                                           |    2 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab        | MV        | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123     |   16 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab |   32 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab |   32 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur         | MOD_DIR   | NULL                                                                           |  128 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                | MOD_DIR   | NULL                                                                           |  128 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                | MOD_DIR   | NULL                                                                           |  128 |
+----------+---------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+------+
