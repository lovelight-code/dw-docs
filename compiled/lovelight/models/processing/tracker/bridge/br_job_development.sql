

select distinct
    job_id,
    development_id
from "dw_dev"."landing_tracker"."ln_br_job_development"
where job_id is not null
  and development_id is not null