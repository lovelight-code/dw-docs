

select distinct
    opportunity_id,
    product_expert_id
from "dw_dev"."landing_tracker"."ln_br_opportunity_product_expert"
where opportunity_id is not null
  and product_expert_id is not null