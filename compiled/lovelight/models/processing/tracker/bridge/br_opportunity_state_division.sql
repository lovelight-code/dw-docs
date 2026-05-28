

select distinct
    opportunity_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_state_division"
where opportunity_id is not null
  and state_division_id is not null