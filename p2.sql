select od.*
from order_details od
where od.order_id in (select o.id from orders o where o.shipper_id = 3);

