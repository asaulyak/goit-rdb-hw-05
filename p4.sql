with temp as (select * from order_details od where od.quantity > 10)
select od.order_id, avg(od.quantity)
from temp od
group by od.order_id;
