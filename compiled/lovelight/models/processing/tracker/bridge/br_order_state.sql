

select distinct
    order_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_order_state"
where order_id is not null
  and state_id is not null