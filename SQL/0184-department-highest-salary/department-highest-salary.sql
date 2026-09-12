select 
    d.name as Department, 
    e.Name as Employee, 
    e.salary from employee as e
join (select id, name, max(salary) 
over (partition by departmentid) as maxi
from employee) as e2
on e.id = e2.id
join Department as d on e.departmentId  = d.id
and e.salary = e2.maxi