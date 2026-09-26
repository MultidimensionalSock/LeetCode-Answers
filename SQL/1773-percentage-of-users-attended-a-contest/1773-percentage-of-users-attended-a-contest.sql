select 
    contest_id,  
    round(count(user_id)/cast((Select count(*) from Users) as decimal(5,2)) * 100, 2) as percentage 
from Register 
group by contest_id
order by percentage desc, contest_id asc 