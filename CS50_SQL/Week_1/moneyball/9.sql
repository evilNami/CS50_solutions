select t.name , round(avg(s.salary),2) as "average salary"
from salaries s
join teams t on t.id = s.team_id
where s.year = 2001
group by s.team_id
order by "average salary"
limit 5 ;
