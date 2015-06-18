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
+----------+---------------------------------------------------------------------------------------+-----------+-------+
| peername | filename                                                                              | operation | other |
+----------+---------------------------------------------------------------------------------------+-----------+-------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                            | MKDIR     | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir                    | MKDIR     | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash             | MKDIR     | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur         | MKDIR     | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur         | MOD_DIR   | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab | NEW       | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab | NEW       | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                | MKDIR     | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                | MOD_DIR   | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab        | NEW       | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab        | NEW       | NULL  |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                | MKDIR     | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                | MOD_DIR   | NULL  |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp/123            | RM        | NULL  |
+----------+---------------------------------------------------------------------------------------+-----------+-------+
