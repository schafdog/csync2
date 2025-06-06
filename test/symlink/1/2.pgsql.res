----------------------------------------------------------------------------------
 /export/home/dennis/Projects/csync2/csync2/test/test/local
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all
 /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link
(3 rows)

----------+----------------------------------------------------------------------------------+-----------+------------------+----
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local                       | MKDIR     |                  |  1
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all      | NEW       |                  |  2
 other    | /export/home/dennis/Projects/csync2/csync2/test/test/local/new_file 'N' all.link | NEW       | new_file 'N' all |  2
(3 rows)

