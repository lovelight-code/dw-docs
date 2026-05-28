

select distinct
    issue_id,
    issue_type_id
from "dw_dev"."landing_tracker"."ln_br_issue_issue_type"
where issue_id is not null
  and issue_type_id is not null