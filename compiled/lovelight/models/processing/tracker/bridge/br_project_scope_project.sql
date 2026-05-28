

select distinct
    project_scope_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_project_scope_project"
where project_scope_id is not null
  and project_id is not null