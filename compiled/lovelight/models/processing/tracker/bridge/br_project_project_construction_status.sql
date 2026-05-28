

select distinct
    project_id,
    project_construction_status_id
from "dw_dev"."landing_tracker"."ln_br_project_project_construction_status"
where project_id is not null
  and project_construction_status_id is not null