

select distinct
    order_id,
    job_id
from "dw_dev"."landing_tracker"."ln_br_order_job"
where order_id is not null
  and job_id is not null