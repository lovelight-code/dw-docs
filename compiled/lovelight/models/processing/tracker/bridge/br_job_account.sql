

select distinct
    job_id,
    account_id
from "dw_dev"."landing_tracker"."ln_br_job_account"
where job_id is not null
  and account_id is not null