

select distinct
    project_ll_statu_id,
    project_type_id
from "dw_dev"."landing_tracker"."ln_br_project_ll_status_project_type"
where project_ll_statu_id is not null
  and project_type_id is not null