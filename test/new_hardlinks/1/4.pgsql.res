-----------------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
(6 rows)

----------+-----------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+----
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                  | MKDIR     |                                                                         |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new              | MKDIR     |                                                                         |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | NEW       |                                                                         |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked   | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file | 32
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file | 32
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file | 32
(6 rows)

