

select distinct
    project_group_call_up_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_project_group_call_up_project"
where project_group_call_up_id is not null
  and project_id is not null