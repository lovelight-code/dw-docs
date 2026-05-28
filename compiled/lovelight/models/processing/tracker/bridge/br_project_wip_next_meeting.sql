

select distinct
    project_wip_id,
    next_meeting_id
from "dw_dev"."landing_tracker"."ln_br_project_wip_next_meeting"
where project_wip_id is not null
  and next_meeting_id is not null