select round(count( distinct a1.player_id)/(select count(distinct player_id) * 1.0 from Activity),2) as fraction
from (
    select player_id, min(event_date) as minD
    from Activity 
    group by player_id
) as a1 
join Activity as a2 on a1.player_id = a2.player_id 
and dateadd(day, 1, a1.minD) = a2.event_date 