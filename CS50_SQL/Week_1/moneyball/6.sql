select t.name , sum(pf.H) as "total hits"
from performances pf
join teams t on t.id = pf.team_id
where pf.year = 2001
group by t.name
order by "total hits" desc
limit 5;
