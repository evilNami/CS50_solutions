select s.name, e.per_pupil_expenditure , g.graduated
from districts d
join expenditures e on e.district_id = d.id
join schools s on s.district_id = d.id
join graduation_rates g on g.school_id = s.id
order by e.per_pupil_expenditure desc, s.name ;
