

select distinct
    order_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_order_state_division"
where order_id is not null
  and state_division_id is not null