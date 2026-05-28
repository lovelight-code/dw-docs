

select distinct
    lead_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_lead_state"
where lead_id is not null
  and state_id is not null