

select distinct
    order_id,
    related_order_id
from "dw_dev"."landing_tracker"."ln_br_order_order"
where order_id is not null
  and related_order_id is not null