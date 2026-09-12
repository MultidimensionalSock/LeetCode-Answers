select 
    round(cast(count(*)as float)/(select count(distinct customer_id) from Delivery) * 100,2) as immediate_percentage
from Delivery as d 
join 
    (select customer_id,  min(order_date) as order_date 
    from Delivery 
    group by customer_id) as f 
on d.order_date = f.order_date and d.customer_id = f.customer_id
where  d.order_date = d.customer_pref_delivery_date 