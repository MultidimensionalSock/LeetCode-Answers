/* Write your T-SQL query statement below */
select s.user_id, 
    case when  cast(c.ActionCount as DECIMAL(5,2))/cast(t.ActionCount as DECIMAL(5,2)) is null then 0 
    else  round(cast(c.ActionCount as DECIMAL(5,2))/cast(t.ActionCount as DECIMAL(5,2)), 2)
    end as confirmation_rate 
from Signups as s 
left join (
    select user_id, count(*) as ActionCount 
    from Confirmations
    where action = 'confirmed'
    group by user_id
) as c on c.user_id = s.user_id
left join
(
    select user_id, count(*) as ActionCount
    from confirmations 
    group by user_id
) as t on t.user_id = s.user_id