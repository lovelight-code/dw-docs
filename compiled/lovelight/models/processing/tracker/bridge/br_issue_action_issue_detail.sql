

select distinct
    issue_action_id,
    issue_detail_id
from "dw_dev"."landing_tracker"."ln_br_issue_action_issue_detail"
where issue_action_id is not null
  and issue_detail_id is not null