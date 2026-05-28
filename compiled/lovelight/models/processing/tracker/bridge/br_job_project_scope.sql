

select distinct
    job_id,
    project_scope_id
from "dw_dev"."landing_tracker"."ln_br_job_project_scope"
where job_id is not null
  and project_scope_id is not null