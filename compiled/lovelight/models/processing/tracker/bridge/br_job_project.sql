

select distinct
    job_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_job_project"
where job_id is not null
  and project_id is not null