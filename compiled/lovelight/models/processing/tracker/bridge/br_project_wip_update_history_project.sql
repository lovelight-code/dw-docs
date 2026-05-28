

select distinct
    project_wip_update_history_id,
    project_id
from "dw_dev"."landing_tracker"."ln_br_project_wip_update_history_project"
where project_wip_update_history_id is not null
  and project_id is not null