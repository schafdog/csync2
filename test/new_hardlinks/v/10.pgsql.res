-----------------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink
(10 rows)

----------+-----------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------------+----
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink | MARK      |                                                                             |  0
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                  | MKDIR     |                                                                             |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new              | MKDIR     |                                                                             |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | NEW       |                                                                             |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink | NEW       |                                                                             |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked   | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | 32
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 | 32
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | 32
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/was_hardlink | 32
 peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_6 | RM        |                                                                             | 64
(10 rows)

