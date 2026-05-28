

select distinct
    project_budget_id,
    supplier_id
from "dw_dev"."landing_tracker"."ln_br_project_budget_supplier"
where project_budget_id is not null
  and supplier_id is not null