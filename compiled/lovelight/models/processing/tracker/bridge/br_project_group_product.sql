

select distinct
    project_group_id,
    product_id
from "dw_dev"."landing_tracker"."ln_br_project_group_product"
where project_group_id is not null
  and product_id is not null