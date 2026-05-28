

select distinct
    project_team_id,
    user_id
from "dw_dev"."landing_tracker"."ln_br_project_team_user"
where project_team_id is not null
  and user_id is not null