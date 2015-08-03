SELECT d.filename, d.checktxt, f.digest, d.operation, op FROM dirty d left join file f on d.filename = f.filename  
WHERE d.device = 16777223 and d.inode = 80143835 and d.peername = 'peer' 
and d.filename != '/export/dev/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST'  
UNION  
SELECT f.filename, f.checktxt, f.digest, NULL, NULL FROM file f left join dirty d on f.device = d.device and f.inode = d.inode  
WHERE d.filename is null and f.device = 16777223 and f.inode = 80143835
AND f.filename != '/export/dev/csync2/test/test/local/Maildir/cur/1434.M21,S=6631,W=6764:2,ST' 

-- SELECT d.filename, d.checktxt, f.digest, d.operation, op FROM dirty d left join file f on d.filename = f.filename
-- WHERE d.device = 16777223 and d.inode = 80143835 and d.peername = 'peer' 
-- and d.filename != '/export/dev/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S'
-- UNION
-- SELECT f.filename, f.checktxt, f.digest, d.operation, d.op FROM dirty d right join file f on f.device = d.device and f.inode = d.inode  
-- WHERE d.filename is null and f.device = 16777223 and f.inode = 80143835
-- AND f.filename != '/export/dev/csync2/test/test/local/Maildir/.Trash/cur/1434.M21,S=6631,W=6764:2,S' 
