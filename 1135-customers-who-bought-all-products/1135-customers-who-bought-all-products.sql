select customer_id 
from (
    select customer_id, count(distinct product_key) as dis
    from Customer 
    group by customer_id
) as d
where dis = (select count(distinct product_key) from Product)