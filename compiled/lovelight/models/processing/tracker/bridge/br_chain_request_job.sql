

select distinct
    chain_request_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_chain_request_job"
where chain_request_id is not null
  and job_id is not null