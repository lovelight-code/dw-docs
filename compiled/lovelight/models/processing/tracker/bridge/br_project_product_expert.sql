

select distinct
    project_id,
    product_expert_id
from "dw_dev"."landing_tracker"."ln_br_project_product_expert"
where project_id is not null
  and product_expert_id is not null