

select distinct
    pm_call_out_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_pm_call_out_job"
where pm_call_out_id is not null
  and job_id is not null