select customer_id, count(v.visit_id) as count_no_trans
from Visits as V 
left join Transactions as T 
on V.visit_id = T.visit_id
where t.transaction_id is null
group by customer_id