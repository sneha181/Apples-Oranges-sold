Select  
sale_date ,
apples_sold - oranges_sold as diff
from
(
    select
to_char(sale_date , 'yyyy-mm-dd') as sale_date,
    sold_num as apples_sold ,
lead(sold_num, 1) over (partition by sale_date order by sale_date) as oranges_sold
from sales s
    )
    where oranges_sold is not null





