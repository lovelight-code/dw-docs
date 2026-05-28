

select distinct
    order_id,
    order_type_id
from "dw_dev"."landing_tracker"."ln_br_order_order_type"
where order_id is not null
  and order_type_id is not null