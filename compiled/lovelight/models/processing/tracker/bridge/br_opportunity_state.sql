

select distinct
    opportunity_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_state"
where opportunity_id is not null
  and state_id is not null