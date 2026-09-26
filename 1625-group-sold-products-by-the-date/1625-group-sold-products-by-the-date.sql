select t.sell_date, count(t.product) as num_sold , string_agg(product, ',') as products
from (
    select sell_date, product 
    from Activities 
    group by sell_date, product
) as t  
group by t.sell_date