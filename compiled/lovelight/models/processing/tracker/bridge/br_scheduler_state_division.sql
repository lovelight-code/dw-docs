

select distinct
    scheduler_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_scheduler_state_division"
where scheduler_id is not null
  and state_division_id is not null