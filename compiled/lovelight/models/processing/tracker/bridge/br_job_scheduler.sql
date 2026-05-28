

select distinct
    job_id,
    scheduler_id
from "dw_dev"."landing_tracker"."ln_br_job_scheduler"
where job_id is not null
  and scheduler_id is not null