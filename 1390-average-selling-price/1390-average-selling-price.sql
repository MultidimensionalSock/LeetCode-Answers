select c.product_id, ifnull(round(sum(c.total)/ sum(c.units),2),0) as average_price
from
(select p.product_id, u.units, (u.units * p.price) as total
from UnitsSold as u
right join Prices as p
on u.product_id = p.product_id
and u.purchase_date between p.start_date and p.end_date) as c
group by c.product_id  