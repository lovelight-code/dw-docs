

select distinct
    job_id,
    job_status_id
from "dw_dev"."landing_tracker"."ln_br_job_job_status"
where job_id is not null
  and job_status_id is not null