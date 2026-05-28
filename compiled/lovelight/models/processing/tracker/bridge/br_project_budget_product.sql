

select distinct
    project_budget_id,
    product_id
from "dw_dev"."landing_tracker"."ln_br_project_budget_product"
where project_budget_id is not null
  and product_id is not null