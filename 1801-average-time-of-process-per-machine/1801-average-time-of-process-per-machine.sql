select a1.machine_id, round(avg(a2.timestamp - a1.timestamp), 3) as processing_time
from 
(
    select machine_id, process_id, timestamp 
    from Activity
    where activity_type = 'start'
) as a1 
join 
(
    select machine_id, process_id, timestamp 
    from Activity
    where activity_type = 'end'
) as a2 
on (a1.machine_id = a2.machine_id and a1.process_id = a2.process_id) 
group by a1.machine_id