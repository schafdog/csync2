---------------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file
(4 rows)

----------+---------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+----
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                | MKDIR     |                                                                         |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new            | MKDIR     |                                                                         |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file   | NEW       |                                                                         |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file | 32
(4 rows)

