

select distinct
    project_wip_item_id,
    project_wip_item_type_id
from "dw_dev"."landing_tracker"."ln_br_project_wip_item_project_wip_item_type"
where project_wip_item_id is not null
  and project_wip_item_type_id is not null