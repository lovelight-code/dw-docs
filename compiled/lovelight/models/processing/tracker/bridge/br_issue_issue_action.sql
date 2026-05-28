

select distinct
    issue_id,
    issue_action_id
from "dw_dev"."landing_tracker"."ln_br_issue_issue_action"
where issue_id is not null
  and issue_action_id is not null