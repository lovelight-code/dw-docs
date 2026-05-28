

select distinct
    order_id,
    scheduler_id
from "dw_dev"."landing_tracker"."ln_br_order_scheduler"
where order_id is not null
  and scheduler_id is not null