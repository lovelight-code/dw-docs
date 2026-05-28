

select distinct
    sample_request_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_sample_request_job"
where sample_request_id is not null
  and job_id is not null