

select distinct
    call_out_id,
    order_id
from "dw_dev"."landing_tracker"."ln_br_call_out_order"
where call_out_id is not null
  and order_id is not null