

select distinct
    project_id,
    project_team_id
from "dw_dev"."landing_tracker"."ln_br_project_project_team"
where project_id is not null
  and project_team_id is not null