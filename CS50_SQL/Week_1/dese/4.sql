select city , count(type) as count
from schools
where type = 'Public School'
group by city
order by count desc, city
limit 10;
