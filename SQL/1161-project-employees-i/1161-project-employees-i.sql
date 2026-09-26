select p.project_id, round(avg(cast(e.experience_years as decimal(5,2))),2) as average_years
from Project as p
join employee as e on p.employee_id = e.employee_id
group by p.project_id