

select distinct
    job_id,
    salespeople_id
from "dw_dev"."landing_tracker"."ln_br_job_salespeople"
where job_id is not null
  and salespeople_id is not null