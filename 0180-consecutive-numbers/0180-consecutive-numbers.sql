select distinct num as ConsecutiveNums from
(
    select num, id - row_number() over (order by num, id) rank 
    from logs
) a
group by num,rank
having count(*) >2