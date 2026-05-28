

select distinct
    action_item_id,
    project_team_id
from "dw_dev"."landing_tracker"."ln_br_action_item_project_team"
where action_item_id is not null
  and project_team_id is not null