/* Write your T-SQL query statement below */
select name, population, area
from World with (nolock)
where area >= 3000000
or population >= 25000000