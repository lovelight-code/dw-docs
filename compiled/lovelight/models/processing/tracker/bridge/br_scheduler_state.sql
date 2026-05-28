

select distinct
    scheduler_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_scheduler_state"
where scheduler_id is not null
  and state_id is not null