Select 
to_char(a.sale_date , 'yyyy-mm-dd') as sale_date,
-- a.sale_Date , a.fruit , a.sold_num,
-- o.sale_Date , o.fruit , o.sold_num ,
a.sold_num - o.sold_num as diff
from sales a , sales o
where a.sale_date = o.sale_Date
and a.fruit = 'apples'
and o.fruit = 'oranges'