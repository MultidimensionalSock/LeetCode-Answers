select product_id, year as first_year, quantity, price
from (
    select *, DENSE_RANK() OVER (PARTITION BY product_id ORDER BY year asc) rank
    from Sales 
) as s
where rank = 1