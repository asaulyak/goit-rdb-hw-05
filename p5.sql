drop function if exists divide_by;

delimiter //

create function divide_by(base float, divider float)
    returns float
    no sql
    deterministic
begin
    return base / divider;
end //

delimiter ;


select od.order_id, od.quantity, divide_by(od.quantity, 10)
from order_details od;
