select pf.year , pf.HR
from performances pf
join players p on p.id = pf.player_id
where p.first_name = "Ken" and p.last_name = "Griffey" and p.birth_year = 1969
order by year desc ;
