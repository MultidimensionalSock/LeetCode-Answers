select employee_id,
case 
    when name like 'm%' then 0
    when name  not like 'm%' and employee_id % 2 = 0 then 0
    else salary 
    end as bonus 
from Employees
order by employee_id