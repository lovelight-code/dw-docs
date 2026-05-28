

select distinct
    project_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_project_job"
where project_id is not null
  and job_id is not null