select p.first_name , p.last_name , (s.salary/pf.H) as "dollars per hit"
from players p
join performances pf on pf.player_id = p.id
join salaries s on s.player_id = p.id
where pf.year = 2001 and s.year = 2001 and pf.H != 0
order by "dollars per hit" , p.first_name , p.last_name
limit 10;
