---------------------------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir
 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur
 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab
 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp
 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash
 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur
 /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab
(8 rows)

----------+---------------------------------------------------------------------------------------+-----------+--------------------------------------------------------------------------------+-----
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                            | MKDIR     |                                                                                |   1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir                    | MKDIR     |                                                                                |   1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                | MKDIR     |                                                                                |   1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                | MKDIR     |                                                                                |   1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash             | MKDIR     |                                                                                |   1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur         | MKDIR     |                                                                                |   1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab        | NEW       |                                                                                |   2
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab        | NEW       |                                                                                |   2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab |  32
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur/123,Sab | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur/123,Sab |  32
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/cur                | MKDIR     |                                                                                | 129
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/tmp                | MKDIR     |                                                                                | 129
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/Maildir/.Trash/cur         | MKDIR     |                                                                                | 129
(13 rows)

