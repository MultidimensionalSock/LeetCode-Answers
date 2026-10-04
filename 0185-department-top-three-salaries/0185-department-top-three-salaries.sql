select d.name as Department, e2.name as Employee, e1.Salary
from
( 
    select departmentId, salary,
    DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary desc) rank
    from Employee
    group by departmentId, salary  
 ) as e1
join Department as d on e1.departmentId = d.id
join Employee as e2 on e1.departmentId = e2.departmentId 
and e1.salary = e2.salary
where e1.rank between 1 and 3 