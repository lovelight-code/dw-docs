

select distinct
    project_wip_id,
    previous_meeting_id
from "dw_dev"."landing_tracker"."ln_br_project_wip_project_wip"
where project_wip_id is not null
  and previous_meeting_id is not null