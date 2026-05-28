

select distinct
    delivery_id,
    staff_id
from "dw_dev"."landing_tracker"."ln_br_delivery_staff"
where delivery_id is not null
  and staff_id is not null