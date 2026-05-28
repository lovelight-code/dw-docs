

select distinct
    project_group_id,
    staff_id
from "dw_dev"."landing_tracker"."ln_br_project_group_staff"
where project_group_id is not null
  and staff_id is not null