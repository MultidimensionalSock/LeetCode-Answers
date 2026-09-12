select w1.Id  
from Weather as w1
join Weather as w2 
on w1.recordDate = dateadd(day, 1, w2.recordDate)
where w1.temperature > w2.temperature
