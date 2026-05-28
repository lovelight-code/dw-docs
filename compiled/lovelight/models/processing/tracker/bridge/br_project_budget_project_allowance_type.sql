

select distinct
    project_budget_id,
    project_allowance_type_id
from "dw_dev"."landing_tracker"."ln_br_project_budget_project_allowance_type"
where project_budget_id is not null
  and project_allowance_type_id is not null