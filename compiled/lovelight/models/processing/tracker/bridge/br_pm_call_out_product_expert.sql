

select distinct
    pm_call_out_id,
    product_expert_id
from "dw_dev"."landing_tracker"."ln_br_pm_call_out_product_expert"
where pm_call_out_id is not null
  and product_expert_id is not null