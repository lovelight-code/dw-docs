

select distinct
    issue_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_issue_job"
where issue_id is not null
  and job_id is not null