

select distinct
    issue_id,
    call_out_id
from "dw_dev"."landing_tracker"."ln_br_issue_call_out"
where issue_id is not null
  and call_out_id is not null