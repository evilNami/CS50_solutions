select distinct t.name
from teams t
join performances pf on pf.team_id = t.id
join players p on p.id = pf.player_id
where p.first_name = "Satchel" and p.last_name = "Paige" ;
