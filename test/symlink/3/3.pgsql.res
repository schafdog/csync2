----------------------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
(4 rows)

----------+----------------------------------------------------------------------------------+-----------+------------------+----
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                       | MKDIR     |                  |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/bad.link              | NEW       | missing          |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all      | NEW       |                  |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link | NEW       | new_file 'N' all |  2
(4 rows)

