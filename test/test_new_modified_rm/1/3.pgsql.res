-------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir
(2 rows)

----------+-------------------------------------------------------------------+-----------+--------------------------------------------------------------+----
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local        | MKDIR     |                                                              |  1
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local        | MKDIR     |                                                              |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/A      | NEW       |                                                              |  2
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/A      | NEW       |                                                              |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir | MV        | /export/home/dennis/Projects/csync2/csync2/test/test/local/A | 16
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/newdir | MV        | /export/home/dennis/Projects/csync2/csync2/test/test/local/A | 16
(6 rows)

