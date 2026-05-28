

select distinct
    project_id,
    project_ll_status_id
from "dw_dev"."landing_tracker"."ln_br_project_project_ll_status"
where project_id is not null
  and project_ll_status_id is not null