select u.name, sum(t.amount) as balance
from Transactions as t 
join Users as u on u.account = t.account 
group by u.account, u.name
having sum(t.amount) > 10000   