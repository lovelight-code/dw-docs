

select distinct
    project_group_id,
    project_group_type_id
from "dw_dev"."landing_tracker"."ln_br_project_group_project_group_type"
where project_group_id is not null
  and project_group_type_id is not null