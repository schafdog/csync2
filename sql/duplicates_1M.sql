select filename, size, digest from file
where digest in
      (select digest from file
       where digest <> '' and digest is not null and size > 1000000
       group by digest
       having count(digest) > 1
       order by count(digest) desc)
order by size desc;
