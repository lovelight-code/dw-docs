

select distinct
    issue_action_id,
    action_id
from "dw_dev"."landing_tracker"."ln_br_issue_action_action"
where issue_action_id is not null
  and action_id is not null