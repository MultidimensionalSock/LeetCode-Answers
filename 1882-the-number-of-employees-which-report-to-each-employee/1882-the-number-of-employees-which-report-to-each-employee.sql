select e1.employee_id, e1.name, e2.reports_count, e2.average_age from Employees as e1
join (
    select reports_to, round(avg(cast(age as float)),0) as average_age, count(*) as reports_count from Employees
    group by reports_to
) as e2
on e1.employee_id = e2.reports_to