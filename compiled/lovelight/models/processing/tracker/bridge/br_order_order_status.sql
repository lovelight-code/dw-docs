

select distinct
    order_id,
    order_status_id
from "dw_dev"."landing_tracker"."ln_br_order_order_status"
where order_id is not null
  and order_status_id is not null