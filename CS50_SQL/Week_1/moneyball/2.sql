select  s.year , s.salary 
from salaries s
join players p on p.id = s.player_id
where p.first_name = "Cal" and p.last_name = "Ripken"
order by year desc;
