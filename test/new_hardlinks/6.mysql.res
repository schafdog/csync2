+-----------------------------------------------------------------------------+
| filename                                                                    |
+-----------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                  |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new              |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked   |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     |
+-----------------------------------------------------------------------------+
+----------+-----------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+------+
| peername | filename                                                                    | operation | other                                                                   | op   |
+----------+-----------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+------+
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local                  | MARK      | NULL                                                                    |    0 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new              | MARK      | NULL                                                                    |    0 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked   | MARK      | NULL                                                                    |    0 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 | MARK      | NULL                                                                    |    0 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 | MARK      | NULL                                                                    |    0 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_4 | MARK      | NULL                                                                    |    0 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_5 | MARK      | NULL                                                                    |    0 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | MARK      | NULL                                                                    |    0 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                  | MKDIR     | NULL                                                                    |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new              | MKDIR     | NULL                                                                    |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file     | NEW       | NULL                                                                    |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked   | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file |   32 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_2 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file |   32 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked_3 | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file |   32 |
+----------+-----------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+------+
