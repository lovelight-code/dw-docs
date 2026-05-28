

select distinct
    development_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_development_state"
where development_id is not null
  and state_id is not null