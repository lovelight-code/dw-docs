

select distinct
    project_budget_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_project_budget_project"
where project_budget_id is not null
  and project_id is not null