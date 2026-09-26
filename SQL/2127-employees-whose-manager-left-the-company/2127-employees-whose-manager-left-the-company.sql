select e.employee_id 
from Employees as e 
left join Employees as m
on e.manager_id = m.employee_id
where e.manager_id is not null 
and m.employee_id is null
and e.salary < 30000
order by e.employee_id