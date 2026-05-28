

select distinct
    order_id,
    staff_id
from "dw_dev"."landing_tracker"."ln_br_order_staff"
where order_id is not null
  and staff_id is not null