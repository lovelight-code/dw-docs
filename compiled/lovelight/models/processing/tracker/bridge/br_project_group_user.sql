

select distinct
    project_group_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_project_group_user"
where project_group_id is not null
  and user_id is not null