

select distinct
    pm_call_out_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_pm_call_out_state"
where pm_call_out_id is not null
  and state_id is not null