select first_name , last_name
from(
    select first_name , last_name, id
    from players
    where id IN(
        select p.id
        from players p
        join performances pf on pf.player_id = p.id
        join salaries s on s.player_id = p.id
        where pf.year = 2001 and s.year = 2001 and pf.H != 0
        order by (s.salary/pf.H)
        limit 10)

    INTERSECT

    select first_name , last_name, id
    from players
    where id IN(
        select p.id
        from players p
        join performances pf on pf.player_id = p.id
        join salaries s on s.player_id = p.id
        where pf.year = 2001 and s.year = 2001 and pf.RBI != 0
        order by (s.salary/pf.RBI) , p.id
        limit 10)
   ) as query
   order by id;
