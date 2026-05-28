

select distinct
    job_id,
    related_job_id
from "dw_dev"."landing_tracker"."ln_br_job_job"
where job_id is not null
  and related_job_id is not null