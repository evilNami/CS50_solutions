select s.salary
from salaries s
join performances pf on pf.player_id = s.player_id
where pf.HR =(
    select max(HR)
    from performances
) and
    s.year = 2001 ;
