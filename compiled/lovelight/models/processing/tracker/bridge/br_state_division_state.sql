

select distinct
    state_division_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_state_division_state"
where state_division_id is not null
  and state_id is not null