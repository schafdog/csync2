SELECT d.filename, d.checktxt, f.digest, d.operation, op FROM dirty d left join file f on d.filename = f.filename  
WHERE f.device = 16777223 and f.inode = 80121430 and d.peername = 'peer' 
-- and d.filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/moved'  
UNION  
SELECT f.filename, f.checktxt, f.digest, NULL, NULL FROM dirty d right join file f on d.filename = f.filename  
WHERE d.filename is null and f.device = 4311744519 and f.inode = 80121430 
and f.filename != '/export/home/dennis/Projects/csync2/csync2/test/test/local/new/moved' 
