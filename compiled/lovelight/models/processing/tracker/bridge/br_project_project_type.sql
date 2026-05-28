

select distinct
    project_id,
    project_type_id
from "dw_dev"."landing_tracker"."ln_br_project_project_type"
where project_id is not null
  and project_type_id is not null