SELECT  to_char(sale_date , 'yyyy-mm-dd') as sale_Date ,
sum (CASE WHEN FRUIT = 'apples' then solD_num else 0 end) -
sum (CASE WHEN FRUIT = 'oranges' THEN SOLD_NUM else 0 end )  as diff
FROM SALES
group by sale_date
order by sale_Date