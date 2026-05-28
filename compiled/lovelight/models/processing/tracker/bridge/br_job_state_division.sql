

select distinct
    job_id,
    state_division_id
from "dw_dev"."landing_tracker"."ln_br_job_state_division"
where job_id is not null
  and state_division_id is not null