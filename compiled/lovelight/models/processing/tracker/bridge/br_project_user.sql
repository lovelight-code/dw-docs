

select distinct
    project_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_project_user"
where project_id is not null
  and user_id is not null