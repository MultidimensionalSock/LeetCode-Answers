CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        select case when (@N <= 0) then null
        else
        (select top 1 salary from
        (select salary, lag(salary, @n - 1, null) over (order by salary desc) as lagid
        from (select distinct salary from Employee) as Employee) as s where s.lagid is not null)
        end as salary
    );
END