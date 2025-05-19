select round(avg(salary),2) as "average salary" , year
from salaries
group by year
order by year desc;



