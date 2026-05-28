

select distinct
    job_id,
    product_expert_id
from "dw_dev"."landing_tracker"."ln_br_job_product_expert"
where job_id is not null
  and product_expert_id is not null