

select distinct
    warehouse_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_warehouse_state"
where warehouse_id is not null
  and state_id is not null