

select distinct
    order_id,
    job_status_id
from "dw_dev"."landing_tracker"."ln_br_order_job_status"
where order_id is not null
  and job_status_id is not null