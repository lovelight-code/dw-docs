

select distinct
    job_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_job_user"
where job_id is not null
  and user_id is not null