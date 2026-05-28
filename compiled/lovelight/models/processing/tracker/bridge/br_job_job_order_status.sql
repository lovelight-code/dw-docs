

select distinct
    job_id,
    job_order_status_id
from "dw_dev"."landing_tracker"."ln_br_job_job_order_status"
where job_id is not null
  and job_order_status_id is not null