+---------------------------------------------------------------------------+
| filename                                                                  |
+---------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new            |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file   |
+---------------------------------------------------------------------------+
+----------+---------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+
| peername | filename                                                                  | operation | other                                                                   |
+----------+---------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                | MKDIR     | NULL                                                                    |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local                | MKDIR     | NULL                                                                    |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new            | MKDIR     | NULL                                                                    |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new            | MKDIR     | NULL                                                                    |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/hardlinked | HARDLINK  | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file   | NEW       | NULL                                                                    |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/new/new_file   | NEW       | NULL                                                                    |
+----------+---------------------------------------------------------------------------+-----------+-------------------------------------------------------------------------+
