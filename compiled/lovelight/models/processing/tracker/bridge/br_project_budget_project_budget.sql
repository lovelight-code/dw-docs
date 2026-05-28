

select distinct
    project_budget_id,
    related_labour_budget_id
from "dw_dev"."landing_tracker"."ln_br_project_budget_project_budget"
where project_budget_id is not null
  and related_labour_budget_id is not null