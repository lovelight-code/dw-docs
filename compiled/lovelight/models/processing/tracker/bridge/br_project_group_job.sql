

select distinct
    project_group_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_project_group_job"
where project_group_id is not null
  and job_id is not null