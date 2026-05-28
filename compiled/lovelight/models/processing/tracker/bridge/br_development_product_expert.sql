

select distinct
    development_id,
    product_expert_id
from "dw_dev"."landing_tracker"."ln_br_development_product_expert"
where development_id is not null
  and product_expert_id is not null