+-----------------------------------------------------------------------------------------+
| filename                                                                                |
+-----------------------------------------------------------------------------------------+
| /export/home/dennis/Projects/csync2/csync2/test/test/local                              |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change                  |
| /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all |
+-----------------------------------------------------------------------------------------+
+----------+-----------------------------------------------------------------------------------------+-----------+-------+------+
| peername | filename                                                                                | operation | other | op   |
+----------+-----------------------------------------------------------------------------------------+-----------+-------+------+
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                              | MKDIR     | NULL  |    1 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all | NEW       | NULL  |    2 |
| peer     | /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change/new_file 'N' all | NEW       | NULL  |    2 |
| other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/type_change                  | MOD_DIR   | NULL  |  128 |
+----------+-----------------------------------------------------------------------------------------+-----------+-------+------+
