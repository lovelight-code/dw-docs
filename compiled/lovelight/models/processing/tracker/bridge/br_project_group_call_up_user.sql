

select distinct
    project_group_call_up_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_project_group_call_up_user"
where project_group_call_up_id is not null
  and user_id is not null