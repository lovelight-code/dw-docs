

select distinct
    project_id,
    state_id
from "dw_dev"."landing_tracker"."ln_br_project_state"
where project_id is not null
  and state_id is not null