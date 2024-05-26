select od_inner.order_id, avg(od_inner.quantity)
from (select * from order_details od where od.quantity > 10) as od_inner
group by od_inner.order_id;

