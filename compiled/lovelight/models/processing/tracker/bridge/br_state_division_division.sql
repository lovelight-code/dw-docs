

select distinct
    state_division_id,
    division_id
from "dw_dev"."landing_tracker"."ln_br_state_division_division"
where state_division_id is not null
  and division_id is not null