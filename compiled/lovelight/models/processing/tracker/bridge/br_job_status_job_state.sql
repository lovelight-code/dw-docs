

select distinct
    job_statu_id,
    job_state_id
from "dw_dev"."landing_tracker"."ln_br_job_status_job_state"
where job_statu_id is not null
  and job_state_id is not null