

select distinct
    project_budget_id,
    project_labour_type_id
from "dw_dev"."landing_tracker"."ln_br_project_budget_project_labour_type"
where project_budget_id is not null
  and project_labour_type_id is not null