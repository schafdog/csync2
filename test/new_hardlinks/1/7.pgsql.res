-----------------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
(8 rows)

----------+-----------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------+----
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new              | MARK      |                                                                             |  0
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 | MARK      |                                                                             |  0
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 | MARK      |                                                                             |  0
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                  | MKDIR     |                                                                             |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new              | MKDIR     |                                                                             |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | NEW       |                                                                             |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked   | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | 32
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 | 32
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | 32
(9 rows)

