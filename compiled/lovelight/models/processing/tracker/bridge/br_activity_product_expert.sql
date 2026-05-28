

select distinct
    activity_id,
    product_expert_id
from "dw_dev"."landing_tracker"."ln_br_activity_product_expert"
where activity_id is not null
  and product_expert_id is not null