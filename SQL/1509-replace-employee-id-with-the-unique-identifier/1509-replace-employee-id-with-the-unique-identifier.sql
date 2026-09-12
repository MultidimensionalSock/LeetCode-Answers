/* Write your T-SQL query statement below */
select unique_id, name
from EmployeeUNI as eu
right join Employees as e on e.id = eu.id