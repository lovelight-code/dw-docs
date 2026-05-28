

select distinct
    call_out_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_call_out_state_division"
where call_out_id is not null
  and state_division_id is not null