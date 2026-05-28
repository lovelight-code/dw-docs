

select distinct
    issue_id,
    issue_detail_id
from "dw_dev"."landing_tracker"."ln_br_issue_issue_detail"
where issue_id is not null
  and issue_detail_id is not null