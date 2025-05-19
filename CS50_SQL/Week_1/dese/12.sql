select d.name , e.per_pupil_expenditure, se.exemplary
from districts d
join expenditures e on e.district_id = d.id
join staff_evaluations se on se.district_id = d.id
where d.state = 'MA' and d.type = 'Public School District'
    and e.per_pupil_expenditure > (select avg(per_pupil_expenditure) from expenditures)
    and se.exemplary > (select avg(exemplary) from staff_evaluations)
order by se.exemplary desc , e.per_pupil_expenditure desc ;
