select top 1 o.person_name 
from (
    select person_name, 
    turn, 
    sum(weight) over (order by turn) as w
    from Queue) as o
where o.w <= 1000
order by o.turn desc