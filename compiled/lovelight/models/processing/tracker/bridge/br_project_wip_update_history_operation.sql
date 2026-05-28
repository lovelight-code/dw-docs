

select distinct
    project_wip_update_history_id,
    operation_id
from "dw_dev"."landing_tracker"."ln_br_project_wip_update_history_operation"
where project_wip_update_history_id is not null
  and operation_id is not null