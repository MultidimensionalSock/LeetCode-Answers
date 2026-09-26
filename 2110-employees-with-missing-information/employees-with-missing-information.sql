select 
    case when e.employee_id is null then 
        s.employee_id else e.employee_id 
        end as employee_id
from Employees as e
full join Salaries as s 
on e.employee_id = s.employee_id 
where s.salary is null 
or e.name is null
order by employee_id