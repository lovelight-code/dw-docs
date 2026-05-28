

select distinct
    issue_detail_id,
    issue_type_id
from "dw_dev"."landing_tracker"."ln_br_issue_detail_issue_type"
where issue_detail_id is not null
  and issue_type_id is not null