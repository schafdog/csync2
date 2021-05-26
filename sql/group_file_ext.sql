select
	substring(filename from '\.([^\.]*)$') as ext,
	count(filename),
	sum(size),
	floor(sum(size)/count(filename))
from file
group by 1
order by 3 desc
limit 20;
