+---------------------------------------------------------------------------+
| filename                                                                  |
+---------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new            |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file   |
+---------------------------------------------------------------------------+
+----------+---------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+------+
| peername | filename                                                                  | operation | other                                                                   | op   |
+----------+---------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                | MKDIR     | NULL                                                                    |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new            | MKDIR     | NULL                                                                    |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file   | NEW       | NULL                                                                    |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file |   32 |
+----------+---------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+------+
